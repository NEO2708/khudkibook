// ignore_for_file: unused_import

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1model.dart';
import 'package:khudkibook/MainPages/Civil/sem2/cv2model.dart';
import 'package:khudkibook/MainPages/It/sem1/it1model.dart';

// ignore: depend_on_referenced_packages
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/appimage.dart';

class GetCv2Books extends StatefulWidget {
  final Cv2items books;

  // ignore: unnecessary_null_comparison
  const GetCv2Books({super.key, required this.books}) : assert(books != null);

  @override
  State<GetCv2Books> createState() => _GetIt1BooksState();
}

class _GetIt1BooksState extends State<GetCv2Books> {
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
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const SizedBox(
                          height: 50,
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
                                .bold
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
                                if (widget.books.durl == "0") {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    duration: const Duration(seconds: 1),
                                    content: "Not Available Check Again Later "
                                        .text
                                        .red500
                                        .make(),
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  downloadfile(widget.books.durl);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: const Duration(seconds: 1),
                                          content: "Your Download is Started "
                                              .text
                                              .center
                                              .xl
                                              .green500
                                              .make()));
                                }
                              })),
                              child: "Book"
                                  .text
                                  .xl3
                                  .color(context.primaryColor)
                                  .make(),
                            ).h(40).w32(context),
                            const SizedBox(
                              width: 10,
                            ),

                            // syllabus btn
                            ElevatedButton(
                              onPressed: ((() {
                                if (widget.books.surl == "0") {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    duration: const Duration(seconds: 1),
                                    content: "Not Available Check Again Later "
                                        .text
                                        .red500
                                        .make(),
                                  ));
                                } else {
                                  downloadfile(widget.books.surl);
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: const Duration(seconds: 2),
                                          content: "Your Download is Started "
                                              .text
                                              .center
                                              .xl
                                              .green500
                                              .make()));
                                }
                              })),
                              child: "Syllabus"
                                  .text
                                  .color(context.primaryColor)
                                  
                                  .xl2
                                  .make(),
                            ).h(40).w32(context),
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
                                if (widget.books.lpurl == "0") {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    duration: const Duration(milliseconds: 1),
                                    content: "Not Available Check Again Later "
                                        .text
                                        .red500
                                        .make(),
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  downloadfile(widget.books.lpurl);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: const Duration(seconds: 2),
                                          content: "Your Download is Started "
                                              .text
                                              .center
                                              .xl
                                              .green500
                                              .make()));
                                }
                              })),
                              child: "Last Sem Paper "
                                  .text
                                  .xl4
                                  .color(context.primaryColor)
                                  .make(),
                            ).h(40).w64(context),
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
                                      if (widget.books.durl == "0") {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          duration: const Duration(milliseconds: 1),
                                          content:
                                              "Not Available Check Again Later "
                                                  .text
                                                  .red500
                                                  .make(),
                                        ));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        downloadfile(widget.books.durl);

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                duration: const Duration(seconds: 2),
                                                content:
                                                    "Your Download is Started "
                                                        .text
                                                        .center
                                                        .xl
                                                        .green500
                                                        .make()));
                                      }
                                    }),
                                    child: "Book "
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

                            // Syllabus
                            ElevatedButton(
                                    onPressed: (() {
                                      if (widget.books.surl == "0") {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          duration: const Duration(milliseconds: 1),
                                          content:
                                              "Not Available Check Again Later "
                                                  .text
                                                  .red500
                                                  .make(),
                                        ));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        downloadfile(widget.books.surl);

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                duration: const Duration(seconds: 2),
                                                content:
                                                    "Your Download is Started "
                                                        .text
                                                        .center
                                                        .xl
                                                        .green500
                                                        .make()));
                                      }
                                    }),
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
                            // Last Year Paper btn
                            ElevatedButton(
                              onPressed: ((() {
                                if (widget.books.lpurl == "0") {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    duration: const Duration(milliseconds: 1),
                                    content: "Not Available Check Again Later "
                                        .text
                                        .red500
                                        .make(),
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  downloadfile(widget.books.lpurl);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: const Duration(seconds: 2),
                                          content: "Your Download is Started "
                                              .text
                                              .center
                                              .xl2
                                              .green500
                                              .make()));
                                }
                              })),
                              child: "Last Sem Paper"
                                  .text
                                  .xl4
                                  .color(context.primaryColor)
                                  .make(),
                            ).h(40).w40(context),
                            const SizedBox(
                              height: 10,
                            ),
                            // ElevatedButton(
                            //         onPressed: (() =>
                            //             (widget.books.purl.toString())),
                            //         child: "Practicals PDF"
                            //             .text
                            //             .xl3
                            //             .color(context.primaryColor)
                            //             .make())
                            //     .h(40)
                            //     .w64(context),
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

downloadfile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "";
  anchorElement.click();
}
