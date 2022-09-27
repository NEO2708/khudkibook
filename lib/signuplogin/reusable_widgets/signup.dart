// import 'dart:html';


// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:khudkibook/signuplogin/reusable_widgets/reusable_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Sign-Up".text.xl2.color(context.primaryColor).make(),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
                    "/Users/rangolivision/Desktop/code/fp/app/assets/img/bg.png")
                .w(400)
                .h(200)
                .p(20),
            const SizedBox(
              height: 10,
            ),
            reusableTextField("Enter Username", Icons.account_circle_outlined,
                false, _userNameTextController).w(500),
            const SizedBox(
              height: 10,
            ),
            reusableTextField("Enter Email", Icons.mail_outlined, false,
                _emailTextController).w(500),
            const SizedBox(
              height: 10,
            ),
            reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController).w(500),
            const SizedBox(
              height: 10,
            ),
            firebaseUIButton(context, "Sign-Up", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => const LogIn())));
            }),
            // firebaseUIButton(context, "SignUp", () {
            //   FirebaseAuth.instance
            //       .createUserWithEmailAndPassword(
            //           email: _emailTextController.text,
            //           password: _passwordTextController.text)
            //       .then((value) {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => LogIn(),
            //         )).onError((error, stackTrace) {
            //       print("Error ${error}");
            //     });
            //   });
            // }),
            LogInOption()
          ],
        ),
      )).backgroundColor(context.canvasColor),
    );
  }

  // ignore: non_constant_identifier_names
  Row LogInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "Already have account?".text.color(context.primaryColor).xl.make(),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ));
          },
          child: " Log-In".text.blue500.bold.xl2.make(),
        )
      ],
    );
  }
}
