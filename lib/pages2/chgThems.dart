import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/pages2/tm.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class ChgTheme extends StatelessWidget {
  const ChgTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {return
        Scaffold(
          appBar: AppBar(
            title: ListTile(
              leading: const Icon(CupertinoIcons.capsule_fill),
              title: "Theme".text.xl3.make(),
            ),
            actions: [
          IconButton(
            onPressed: () {
              themeNotifier.isDark
                  ? themeNotifier.isDark = false
                  : themeNotifier.isDark = true;
            },
            icon: Icon(
                themeNotifier.isDark ? Icons.wb_sunny : Icons.nightlight),
          )
        ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                      groupValue: 1,
                      value: 0,
                      onChanged: (int? value) {},
                    ),
                    "System Theme".text.color(context.primaryColor).xl4.make(),
                  ],
                ),
                const Placeholder(
                  fallbackHeight: 300,
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: 2,
                      value: 0,
                      onChanged: (int? value) {},
                    ),
                    "Ligt Theme".text.color(context.primaryColor).xl4.make(),
                  ],
                ),
                const Placeholder(
                  fallbackHeight: 300,
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: 3,
                      value: 0,
                      onChanged: (int? value) {},
                    ),
                    "Dark Theme".text.color(context.primaryColor).xl4.make(),
                  ],
                ),
                const Placeholder(
                  fallbackHeight: 300,
                ),
              ],
            ).backgroundColor(context.cardColor),
          ),
        );
      },
    );
  }
}

class MyThemeHeader extends StatelessWidget {
  const MyThemeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          "Light Theme".text.xl4.color(context.primaryColor).bold.make().p(20),
          "Dark Theme".text.xl4.color(context.primaryColor).bold.make().p(20),
          "System Theme".text.xl4.color(context.primaryColor).bold.make().p(20)
        ]);
  }
}
