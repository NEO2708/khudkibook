// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors, duplicate_ignore, unnecessary_string_interpolations, non_constant_identifier_names
// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Computer/sem1/cmp1model.dart';
import 'package:khudkibook/widget/appimage.dart';
import 'package:khudkibook/widget/drawer.dart';
import 'package:khudkibook/widget/icon.dart';
import 'package:khudkibook/widget/themeChange.dart';
import 'package:khudkibook/widget/validated.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../../screens/heade.dart';
import '../../../widget/floatingbtn.dart';
import 'getcmp1.dart';

class Cmp1HomePage extends StatefulWidget {
  @override
  State<Cmp1HomePage> createState() => _Cmp1HomePageState();
}

class _Cmp1HomePageState extends State<Cmp1HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer(builder: (context, ThemeModel themeNotifier, child) {

    return Scaffold(
      appBar: AppBar(
        actions: const [ChangeTheme()],
        title: MyHeadIcon(),
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
            if (Cmp1Model.product != null && Cmp1Model.product.isNotEmpty)
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

            itemCount: Cmp1Model.product.length,
            itemBuilder: (context, index) {
              final books = Cmp1Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => GetCmp1Books(books: books)),
                        ),
                      ),
                  child: MyBooks(books: books));
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: Cmp1Model.product.length,
            itemBuilder: (context, index) {
              final books = Cmp1Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => GetCmp1Books(books: books)))),
                  child: MyBooks(books: books));
            },
          );
  }
}

class MyBooks extends StatefulWidget {
  final Cmp1items books;

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
                        onPressed: (() {
                          validator(widget.books.durl, context);
                        }),
                        child: MyIcon())
                    .wPCT(
                        context: context, widthPCT: context.isMobile ? 28 : 20)
                    .hPCT(
                        context: context, heightPCT: context.isMobile ? 4 : 4),
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
      child:
          "Computer | Sem-1".text.color(context.primaryColor).center.xl3.make(),
    );
  }
}
