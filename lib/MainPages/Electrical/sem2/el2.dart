// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors, duplicate_ignore, unnecessary_string_interpolations, non_constant_identifier_names, unused_import
// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khudkibook/MainPages/Electrical/sem1/el1model.dart';
import 'package:khudkibook/MainPages/Electrical/sem1/getel1.dart';
import 'package:khudkibook/MainPages/Electrical/sem2/el2model.dart';
import 'package:khudkibook/MainPages/Electrical/sem2/getel2.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:khudkibook/pages/tm.dart';
import 'package:khudkibook/utils/routes.dart';
import 'package:khudkibook/widget/appimage.dart';
import 'package:khudkibook/widget/drawer.dart';
import 'package:khudkibook/widget/floatingbtn.dart';
import 'package:khudkibook/widget/icon.dart';
import 'package:khudkibook/widget/themeChange.dart';
import 'package:khudkibook/widget/validated.dart';
import 'package:provider/provider.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../../screens/heade.dart';

class El2HomePage extends StatefulWidget {
  @override
  State<El2HomePage> createState() => _El2HomePageState();
}

class _El2HomePageState extends State<El2HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyHeadIcon(),
        actions: const [ChangeTheme()],
        backgroundColor: Colors.transparent,
        // ignore: prefer_const_constructors
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
      floatingActionButton: MyFloat(),
      backgroundColor: context.cardColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(children: [
            MyHeader(),

            // ignore: unnecessary_null_comparison
            if (El2Model.product != null && El2Model.product.isNotEmpty)
              MyContent().expand()
            else
              Center(
                child: CircularProgressIndicator(),
              ),
          ]),
        ),
      ),
    );
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return !context.isMobile
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
            // padding: EdgeInsets.all(5),
            shrinkWrap: true,

            itemCount: El2Model.product.length,
            itemBuilder: (context, index) {
              final books = El2Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => GetEl2Books(books: books)),
                        ),
                      ),
                  child: MyBooks(books: books));
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: El2Model.product.length,
            itemBuilder: (context, index) {
              final books = El2Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => GetEl2Books(books: books)))),
                  child: MyBooks(books: books));
            },
          );
  }
}

class MyBooks extends StatefulWidget {
  final El2items books;

  // ignore: use_key_in_widget_constructors
  const MyBooks({
    Key? key,
    required this.books,
    // ignore: unnecessary_null_comparison
  }) : assert(books != null);

  @override
  State<MyBooks> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooks> {
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    var children2 = [
      Hero(
          tag: "img-${widget.books.id}",
          child: MyImage(image: widget.books.image)),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.books.name.text.bold
                .color(context.primaryColor)
                .xl
                .make()
                .py(2),
            widget.books.desc.text.xl.color(context.primaryColor).make().py(2),
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.books.sem.text.extraBold.xl.make(),
                ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: ((() {
                          validator(widget.books.durl, context);
                        })),
                        child: MyIcon()
                        // "Download".text.color(Color.fromARGB(255, 30, 24, 16)).bold.xl2.make()
                        )
                    .wPCT(
                        context: context, widthPCT: context.isMobile ? 28 : 20)
                    .hPCT(
                        context: context, heightPCT: context.isMobile ? 4 : 4),
                // widget.books.size.text.underline.blue500.bold.xl.make()
              ],
            ).pOnly(right: 10)
          ],
        ).wPCT(context: context, widthPCT: context.isMobile ? 10 : 40),
      ),
    ];
    return context.isMobile
        ? VxBox(
            child: Row(
            children: children2,
          )).roundedLg.color(context.canvasColor).square(250).make().py(20)
        : Row(
            children: children2,
          ).backgroundColor(context.canvasColor);
  }
}



class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: "Electrical | Sem-2"
          .text
          .color(context.primaryColor)
          .center
          .xl3
          .make(),
    );
  }
}
