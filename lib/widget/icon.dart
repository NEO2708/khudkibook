import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.download)
        .iconSize(context.isMobile ? 30 : 40)
        .iconColor(context.canvasColor);
  }
}