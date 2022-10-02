// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

validator(widget, context) {
  if (widget == "0") {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 1),
      content: "Not Available Check Again Later ".text.red500.make(),
    ));
  } else {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    downloadfile(widget);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 1),
        content: "Your Download is Started ".text.center.xl.green500.make()));
  }
}

downloadfile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "";
  anchorElement.click();
}



class BookText extends StatelessWidget {
  const BookText({super.key});

  @override
  Widget build(BuildContext context) {
    return "Book".text.xl3.color(context.primaryColor).make();
  }
}

class MySyllabus extends StatelessWidget {
  const MySyllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return "Syllabus".text.color(context.primaryColor).xl2.make();
  }
}

// ignore: camel_case_types
class lsm extends StatelessWidget {
  const lsm({super.key});

  @override
  Widget build(BuildContext context) {
    return "Last Sem Paper ".text.xl4.color(context.primaryColor).make();
  }
}
