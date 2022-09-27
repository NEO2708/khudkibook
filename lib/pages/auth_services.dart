import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/pages/homepage.dart';
import 'package:khudkibook/pages/login.dart';
import 'package:khudkibook/signuplogin/reusable_widgets/login.dart';

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
        .then((User) {
      print("signed-in");
    }).catchError((e) {
      print(e);
    });
  }
}
