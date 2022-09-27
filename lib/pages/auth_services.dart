
// ignore_for_file: avoid_print, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/pages/homepage.dart';
import 'package:khudkibook/pages/login.dart';

class AuthService {
  // Handle Auth
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }

  // Signout
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  // SignIn
  signIn(String email, String password) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
        .then((User) {
      // ignore: avoid_print
      print("signed-in");
    }).catchError((e) {
      print(e);
    });
  }
}
