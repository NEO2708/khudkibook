import 'package:flutter/material.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:khudkibook/pages/profil.dart';
import 'package:khudkibook/widget/theme.dart';
import 'pages/chgThems.dart';
import 'pages/homepage.dart';
import 'utils/routes.dart';

void main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      initialRoute: MyRoutes.homePage,
      routes: {
        "/": (context) => const DropDownPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.chgTheme: (context) => const ChgTheme(),

        MyRoutes.profile: (context) => const MyProfile(),
        MyRoutes.homePage: (context) =>  const DropDownPage(),
      },
    );
  }
}
