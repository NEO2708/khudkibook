// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class MyDownloades extends StatelessWidget {
  const MyDownloades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ListTile(
                  leading: const Icon(CupertinoIcons.cloud_download_fill)
                      .iconColor(context.primaryColor),
                  title: "Downlodes".text.xl4.color(context.primaryColor).make(),
                ),
        
      ),
    );
  }
}
