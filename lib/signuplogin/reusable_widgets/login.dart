// import 'dart:html';

// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:khudkibook/signuplogin/reusable_widgets/reusable_widget.dart';
import 'package:khudkibook/signuplogin/reusable_widgets/signup.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../pages/homepage.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  
  final formKey =  GlobalKey<FormState>();

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              "Log-In".text.xl3.color(context.primaryColor).make(),
              Image.asset(
                      "/Users/rangolivision/Desktop/code/fp/app/assets/img/bg.png")
                  .w(400)
                  .h(200)
                  .p(20),
              const SizedBox(
                height: 10,
              ),
              reusableTextField("Enter Email", Icons.account_circle, false,
                      _emailTextController)
                  .w(500),
              const SizedBox(
                height: 10,
              ),
              reusableTextField("Enter Password", Icons.lock, true,
                      _passwordTextController)
                  .w(500),
              const SizedBox(
                height: 10,
              ),
              firebaseUIButton(context, "Log-In", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              }),
              SignInOption()
            ],
          ),
        )).backgroundColor(context.canvasColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row SignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "Don't have account?".text.color(context.primaryColor).xl2.make(),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ));
          },
          child: " SignUp".text.blue500.bold.xl2.make(),
        )
      ],
    );
  }
}
