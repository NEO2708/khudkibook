// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors, duplicate_ignore, unnecessary_string_interpolations, non_constant_identifier_names, unused_import
// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1model.dart';
import 'package:khudkibook/MainPages/Civil/sem1/getcv1.dart';
import 'package:khudkibook/MainPages/It/sem1/getIt1.dart';
import 'package:khudkibook/MainPages/It/sem1/it1model.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:khudkibook/pages/homepage.dart';
import 'package:khudkibook/pages/tm.dart';
import 'package:khudkibook/utils/routes.dart';
import 'package:khudkibook/widget/appimage.dart';
import 'package:khudkibook/widget/drawer.dart';
import 'package:khudkibook/widget/floatingbtn.dart';
import 'package:khudkibook/widget/themeChange.dart';
import 'package:provider/provider.dart';

import 'package:velocity_x/velocity_x.dart';

import 'getme2.dart';
import 'me2model.dart';



class Me2HomePage extends StatefulWidget {
  @override
  State<Me2HomePage> createState() => _Me2HomePageState();
}

class _Me2HomePageState extends State<Me2HomePage> {
  @override
  void initState() {
    super.initState();
    // loadData();
  }

  loadData() async {
    final dataJson = await rootBundle.loadString(
        "/Users/rangolivision/Desktop/code/final/khudkibook/assets/files/me/me2.json");
    final decodData = jsonDecode(dataJson);

    var productData = decodData["me2prododucts"];
    Me2Model.product = List.from(productData)
        .map<Me2items>((It) => Me2items.fromMap(It))
        .toList();
    setState(() {});
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
            if (Me2Model.product != null && Me2Model.product.isNotEmpty)
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

            itemCount: Me2Model.product.length,
            itemBuilder: (context, index) {
              final books = Me2Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => GetMe2Books(books: books)),
                        ),
                      ),
                  child: MyBooks(books: books));
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: Me2Model.product.length,
            itemBuilder: (context, index) {
              final books = Me2Model.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => GetMe2Books(books: books)))),
                  child: MyBooks(books: books));
            },
          );
  }
}

class MyBooks extends StatefulWidget {
  final Me2items books;

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
                          if (widget.books.durl == "0") {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: Duration(seconds: 1),
                              content: "Not Available Check Again Later "
                                  .text
                                  .red500
                                  .make(),
                            ));
                          } else {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            downloadfile(widget.books.durl);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: Duration(seconds: 1),
                                content: "Your Download is Started "
                                    .text
                                    .center
                                    .xl
                                    .green500
                                    .make()));
                          }
                        })),
                        child: Icon(Icons.download)
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

downloadfile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "";
  anchorElement.click();
}

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: "Mechanical | Sem-2".text.color(context.primaryColor).center.xl3.make(),
    );
  }
}
