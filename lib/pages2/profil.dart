// ignore_for_file: prefer_const_literals_to_create_immutables




// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0.0,
        title: ListTile(
          leading: const Icon(Icons.account_circle),
          title: "Profile".text.xl3.make(),
        ),
      ),
      body: SingleChildScrollView(child: Column(children:  []),)
    );
  }
}