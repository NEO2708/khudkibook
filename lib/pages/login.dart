// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/pages/auth_services.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

String name = "";
bool onlogin = false;
bool clrchg = false;

class _LoginPageState extends State<LoginPage> {
   String email="", password="";
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // int value;
    return Material(
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.network(
                      "https://neo2708.github.io/pic.github.io/loginhead.png")
                  .w(500)
                  .h(300)
                  .p(40),
              Text(
                "Welcome $name",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Enter Your Username",
                          prefixIcon: Icon(CupertinoIcons.capsule),
                          labelText: "Username",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          labelStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: context.primaryColor,
                              fontSize: 20),
                          errorStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),

                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Cannot Be Empty";
                        } else if (value.contains('#') ||
                            value.contains('@') ||
                            value.contains('!') ||
                            value.contains('%') ||
                            value.contains('^') ||
                            value.contains('&') ||
                            value.contains('*') ||
                            value.contains('*') ||
                            value.contains('(') ||
                            value.contains(')') ||
                            value.contains('-') ||
                            value.contains('_') ||
                            value.contains('=') ||
                            value.contains('+')) {
                          return "Username Cannot Have '#','!','@','%','^','&','*','-','+''=','<','>',','?','/','|','[',']','{','}'";
                        }
                        if (value == " ") {
                          return "Username Cannot Be empty";
                        } else if (value.length < 6) {
                          return "Password Must Contain 6 characters ";
                        }
                      },

                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          prefixIcon: Icon(CupertinoIcons.padlock),
                          labelText: "Password ",
                          hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          labelStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: context.primaryColor,
                              fontSize: 20),
                          errorStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the password ";
                        } else if (value.length < 8) {
                          return "Password Must Contain 8characters ";
                        } else if (value.characters.first !=
                            value.characters.first.toUpperCase()) {
                          return "Password First Letter Must be Capital Letter";
                        }
                      },
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: (() async {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            AuthService().signIn( email ,  password);
                            onlogin = true;
                            clrchg = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          // ignore: use_build_context_synchronously
                          await Navigator.pushNamed(
                              context, MyRoutes.homeRoute);
                          setState(() {
                            onlogin = false;
                            clrchg = true;
                          });
                        }
                      }),
                      child: Container(
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            alignment: Alignment.center,
                            width: onlogin ? 50 : 150,
                            height: 50,
                            child: onlogin
                                ? CircularProgressIndicator(
                                    color: Colors.amber,
                                  )
                                : Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                            decoration: BoxDecoration(
                                color: clrchg ? Colors.green : Colors.red,
                                borderRadius:
                                    BorderRadius.circular(onlogin ? 30 : 10))),
                      ),
                    ),
                  ],
                ).w(500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
