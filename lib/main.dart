import 'package:flutter/material.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:khudkibook/pages/profil.dart';
import 'package:khudkibook/pages/tm.dart';
import 'package:khudkibook/widget/theme.dart';
import 'package:provider/provider.dart';
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
    return const MaterialApp(
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
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel themeNotifier, child) {
          return
          MaterialApp(
            themeMode: themeNotifier.isDark? ThemeMode.dark:ThemeMode.light,
            theme: MyTheme.lightTheme(context),
            darkTheme: MyTheme.darkTheme(context),
            debugShowCheckedModeBanner: false,
            initialRoute: MyRoutes.homePage,
            routes: {
              MyRoutes.homeRoute: (context) => HomePage(),
              // MyRoutes.loginRoute: (context) => LoginPage(),
              MyRoutes.chgTheme: (context) => const ChgTheme(),
    
              MyRoutes.profile: (context) => const MyProfile(),
              MyRoutes.homePage: (context) => const DropDownPage(),
            },
          );
        },
      ),
    );
  }
}
