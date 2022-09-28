// ignore_for_file: unused_import

// import 'dart:html';


import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1model.dart';
import 'package:khudkibook/MainPages/It/sem1/it1model.dart';
import 'package:khudkibook/models/app.dart';

// ignore: depend_on_referenced_packages
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/appimage.dart';



class GetCv1Books extends StatefulWidget {
  final Cv1items books;

  // ignore: unnecessary_null_comparison
  const GetCv1Books({super.key, required this.books}) : assert(books != null);

  @override
  State<GetCv1Books> createState() => _GetIt1BooksState();
}

class _GetIt1BooksState extends State<GetCv1Books> {
  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,

              title: widget.books.name.text.extraBold
                  .color(context.primaryColor)
                  .xl2
                  .make(),
              // ignore: prefer_const_constructors
              elevation: 0.0,
            ),
            body: Column(
              children: [
                Hero(
                    tag: "img-${widget.books.id}",
                    child:  MySimg(image: widget.books.image).w(300)),
        

                Expanded(
                  child: VxArc(
                    height: 50,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.books.desc.text.xl2
                                .color(context.primaryColor)
                                .bold
                                .headline1(context)
                                .make()
                                .p(10),
                            widget.books.sem.text
                                .color(context.primaryColor)
                                .extraBold
                                .xl3
                                .make()
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.durl.toString())),
                                    child: "Book PDF"
                                        .text
                                        .bold
                                        .xl2
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w32(context),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.surl.toString())),
                                    child: "Syllabus"
                                        .text
                                        .bold
                                        .xl2
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w32(context),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.lpurl.toString())),
                                    child: "Last Year Paper"
                                        .text
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w64(context),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.purl.toString())),
                                    child: "Practicals PDF"
                                        .text
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w64(context),
                          ],
                        ),

                        // ignore: prefer_const_constructors
                        // .color(Color.fromARGB(255, 0, 160, 252))

                        // widget.books.size.text.blue500.underline.xl.bold
                        // .make()
                        // .p(0),
                      ],
                    ).backgroundColor(context.cardColor),
                  ).whFull(context).backgroundColor(context.canvasColor),
                )
              ],
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,

              title: widget.books.name.text.extraBold
                  .color(context.primaryColor)
                  .xl2
                  .make(),
              // ignore: prefer_const_constructors
              elevation: 0.0,
            ),
            body: Column(
              children: [
                // Image.network(books.image).p24(),
                Hero(
                    tag: "img-${widget.books.id}",
                    child: MySimg(image: widget.books.image).w(500)),

                Expanded(
                  child: VxArc(
                    height: 60,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 110,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.books.desc.text.xl3
                                .color(context.primaryColor)
                                .bold
                                .headline1(context)
                                .make()
                                .p(10),
                            widget.books.sem.text
                                .color(context.primaryColor)
                                .extraBold
                                .xl3
                                .make()
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.durl.toString())),
                                    child: "Book PDF"
                                        .text
                                        .bold
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w32(context),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.surl.toString())),
                                    child: "Syllabus"
                                        .text
                                        .bold
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w32(context),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.lpurl.toString())),
                                    child: "Last Year Paper"
                                        .text
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w64(context),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                    onPressed: (() => (
                                        widget.books.purl.toString())),
                                    child: "Practicals PDF"
                                        .text
                                        .xl3
                                        .color(context.primaryColor)
                                        .make())
                                .h(40)
                                .w64(context),
                          ],
                        ),

                        // ignore: prefer_const_constructors
                        // .color(Color.fromARGB(255, 0, 160, 252))

                        // widget.books.size.text.blue500.underline.xl.bold
                        // .make()
                        // .p(0),
                      ],
                    ).backgroundColor(context.cardColor),
                  ).whFull(context).backgroundColor(context.canvasColor),
                )
              ],
            ),
          );
  }
}

// downloadfile(url) {
//   AnchorElement anchorElement = AnchorElement(href: url);
//   anchorElement.download = "";
//   anchorElement.click();
// }
