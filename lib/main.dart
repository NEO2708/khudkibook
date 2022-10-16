import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/It/sem1/it1.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:khudkibook/pages2/profil.dart';
import 'package:khudkibook/pages2/tm.dart';
import 'package:khudkibook/widget/theme.dart';
import 'package:provider/provider.dart';
import 'pages2/chgThems.dart';
import 'utils/routes.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: _initialization,
          builder: ((context, snapshot) {
            if (snapshot.hasError) {
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return const MyHp();
            }
            // ignore: prefer_const_constructors
            return CircularProgressIndicator();
          })),
    );
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
          return MaterialApp(
            themeMode: themeNotifier.isDark ? ThemeMode.dark : ThemeMode.light,
            theme: MyTheme.lightTheme(context),
            darkTheme: MyTheme.darkTheme(context),
            debugShowCheckedModeBanner: false,
            initialRoute: MyRoutes.homePage,
            routes: {
              MyRoutes.chgTheme: (context) => const ChgTheme(),
              MyRoutes.home: (context) =>  It1HomePage(),


              MyRoutes.profile: (context) => const MyProfile(),
              MyRoutes.homePage: (context) => const DropDownPage(),
            },
          );
        },
      ),
    );
  }
}
