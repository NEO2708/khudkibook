// ignore_for_file: unused_import

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1model.dart';
import 'package:khudkibook/MainPages/Civil/sem2/cv2model.dart';
import 'package:khudkibook/MainPages/Computer/sem2/cmp2model.dart';
import 'package:khudkibook/MainPages/It/sem1/it1model.dart';
import 'package:khudkibook/widget/validated.dart';

// ignore: depend_on_referenced_packages
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/appimage.dart';

class GetCmp2Books extends StatefulWidget {
  final Cmp2items books;

  // ignore: unnecessary_null_comparison
  const GetCmp2Books({super.key, required this.books}) : assert(books != null);

  @override
  State<GetCmp2Books> createState() => _GetCmp2BooksState();
}

class _GetCmp2BooksState extends State<GetCmp2Books> {
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
                    child: MySimg(image: widget.books.image).w(300)),
                Expanded(
                  child: VxArc(
                    height: 50,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Column(
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
                            // Full-Book Btn
                            ElevatedButton(
                                    onPressed: ((() {
                                      validator(widget, context);
                                    })),
                                    child: BookText())
                                .h(40)
                                .w32(context),
                            const SizedBox(
                              width: 10,
                            ),

                            // syllabus btn
                            ElevatedButton(
                                    onPressed: ((() {
                                      validator(widget, context);
                                    })),
                                    child: MySyllabus())
                                .h(40)
                                .w32(context),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            // Last Year Paper btn
                            ElevatedButton(
                                    onPressed: ((() {
                                      validator(widget, context);
                                    })),
                                    child: lsm())
                                .h(40)
                                .w64(context),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
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
                            // Book btn
                            ElevatedButton(
                                    onPressed: (() {
                                      validator(widget, context);
                                    }),
                                    child: BookText())
                                .h(40)
                                .w32(context),
                            const SizedBox(
                              width: 10,
                            ),

                            // Syllabus
                            ElevatedButton(
                                    onPressed: (() {
                                      validator(widget, context);
                                    }),
                                    child: MySyllabus())
                                .h(40)
                                .w32(context),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            // Last Year Paper btn
                            ElevatedButton(
                              onPressed: ((() {
                                validator(widget, context);
                              })),
                              child: lsm()
                            ).h(40).w40(context),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ).backgroundColor(context.cardColor),
                  ).whFull(context).backgroundColor(context.canvasColor),
                )
              ],
            ),
          );
  }
}

downloadfile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "";
  anchorElement.click();
}
