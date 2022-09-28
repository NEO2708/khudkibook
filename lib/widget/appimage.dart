import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyImage extends StatefulWidget {
  final String image;

  const MyImage({super.key, required this.image});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Image.network(widget.image).box
              .color(context.cardColor)
              .roundedLg
              .make()
              .p(20)
              .wPCT(context: context, widthPCT: context.isMobile?50:30);
              
  }
}
class MySimg extends StatefulWidget {
  final String image;

  const MySimg({super.key, required this.image});

  @override
  State<MySimg> createState() => _MySimgState();
}

class _MySimgState extends State<MySimg> {
  @override
  Widget build(BuildContext context) {
    return Image.network(widget.image).box
              .make()
              .p(20)
              .wPCT(context: context, widthPCT: context.isMobile?50:30);
              
  }
}



