// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khudkibook/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  bool no = false;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations

    return no
        ? Drawer(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountEmail: "partr.2608@gmail.com"
                          .text
                          .color(context.primaryColor)
                          .xl2
                          .make(),
                      accountName:
                          "Parthr".text.color(context.primaryColor).xl2.make(),
                    ).backgroundColor(context.cardColor),
                  ),
                  // Card(

                  //   elevation: 0.0,
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.pushNamed(context, MyRoutes.chgTheme);
                  //     },
                  //     child: ListTile(
                  //       leading: Icon(CupertinoIcons.capsule)
                  //           .iconColor(context.primaryColor),
                  //       title: "Thems".text.xl3.color(context.primaryColor).make(),
                  //     ).backgroundColor(context.canvasColor),
                  //   ),
                  // ),
                  Card(
                    elevation: 0.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.profile);
                      },
                      child: ListTile(
                        leading: Icon(Icons.account_circle_outlined)
                            .iconColor(context.primaryColor),
                        title: "Profile"
                            .text
                            .xl3
                            .color(context.primaryColor)
                            .make(),
                      ).backgroundColor(context.canvasColor),
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: Icon(CupertinoIcons.suit_heart)
                          .iconColor(context.primaryColor),
                      title: "Know Culture"
                          .text
                          .xl3
                          .color(context.primaryColor)
                          .make(),
                    ).backgroundColor(context.canvasColor),
                  )
                ],
              ),
            ).backgroundColor(context.cardColor),
          )
        : Icon(Icons.handyman_outlined);
  }
}
