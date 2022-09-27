// ignore_for_file: depend_on_referenced_packages

// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:khudkibook/pages/auth_services.dart';
import 'package:khudkibook/pages/downloaded.dart';
import 'package:khudkibook/pages/profil.dart';
import 'package:khudkibook/signuplogin/reusable_widgets/login.dart';
import 'package:khudkibook/widget/theme.dart';

import 'firebase_options.dart';
import 'pages/chgThems.dart';
import 'pages/homepage.dart';
import 'pages/login.dart';
import 'utils/routes.dart';

void main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyHp(),
    );
    //  MaterialApp(
    //   home: AuthService().handleAuth(),
    // );
  }
}

class MyHp extends StatelessWidget {
  const MyHp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.chgTheme: (context) => const ChgTheme(),
        MyRoutes.downloaded: (context) => const MyDownloades(),
        MyRoutes.profile: (context) => const MyProfile(),
      },
    );
  }
}
