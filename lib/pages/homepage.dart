// ignore_for_file: public_member_api_docs, sort_constructors_first, use_key_in_widget_constructors, duplicate_ignore, unnecessary_string_interpolations, non_constant_identifier_names
// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names
import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:velocity_x/velocity_x.dart';

import '../models/app.dart';
import '../widget/appimage.dart';
import '../widget/drawer.dart';
import 'get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final dataJson = await rootBundle.loadString("assets/files/data.json");
    final decodData = jsonDecode(dataJson);

    var productData = decodData["products"];
    AppModel.product = List.from(productData)
        // ignore: non_constant_identifier_names
        .map<Items>((It) => Items.fromMap(It))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer(builder: (context, ThemeModel themeNotifier, child) {

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, MyRoutes.downloaded);
      //   },
      //   backgroundColor: context.primaryColor,
      //   child:
      //       Icon(CupertinoIcons.cloud_download).iconColor(context.canvasColor),
      // ),
      appBar: AppBar(
        title: MyHeadIcon(),

        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       themeNotifier.isDark
        //           ? themeNotifier.isDark = false
        //           : themeNotifier.isDark = true;
        //     },
        //     icon: Icon(
        //         themeNotifier.isDark ? Icons.wb_sunny : Icons.nightlight),
        //   )
        // ],
        backgroundColor: Colors.transparent,
        // ignore: prefer_const_constructors
        elevation: 0.0,
      ),

      drawer: MyDrawer(),
      backgroundColor: context.cardColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(children: [
            MyHeader(),

            // ignore: unnecessary_null_comparison
            if (AppModel.product != null && AppModel.product.isNotEmpty)
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

            itemCount: AppModel.product.length,
            itemBuilder: (context, index) {
              final books = AppModel.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => GetBooks(books: books)),
                        ),
                      ),
                  child: MyBooks(books: books));
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: AppModel.product.length,
            itemBuilder: (context, index) {
              final books = AppModel.product[index];

              return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => GetBooks(books: books)))),
                  child: MyBooks(books: books));
            },
          );
  }
}

class MyBooks extends StatefulWidget {
  final Items books;

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
                        onPressed: (() => (widget.books.durl.toString())),
                        child: "Get".text.bold.xl2.make())
                    .wPCT(
                        context: context, widthPCT: context.isMobile ? 28 : 20)
                    .hPCT(
                        context: context, heightPCT: context.isMobile ? 4 : 4),
                widget.books.size.text.underline.blue500.bold.xl.make()
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

// downloadfile(url) {
//   AnchorElement anchorElement = AnchorElement(href: url);
//   anchorElement.download = "";
//   anchorElement.click();
// }

class MyHeadIcon extends StatelessWidget {
  final imgu =
      "https://cdn2.iconfinder.com/data/icons/diwali-2027/32/shree_sree_hindu_gita_book_holy_religion-512.png";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        context.isMobile ? Image.network(imgu).w(50) : Image.network(imgu).w(70)
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          MyDropdown(),
          MyDropdownt(),
        ],
      ),
    );
  }
}

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  static final data = [
    "Branch",
    "I.T",
    "Computer",
    "Civil",
    "Mechanical",
    "Electrical"
  ];
  String initial = data.first.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        value: initial,
        items: data.map((String drpi) {
          return DropdownMenuItem(
              value: drpi,
              child:
                  "$drpi".text.color(context.primaryColor).xl2.center.make());
        }).toList(),
        onChanged: (value) {
          setState(() {
            initial = value as String;
          });
        },
      ).centered(),
    ).wh(150, 40).backgroundColor(context.canvasColor);
  }
}

class MyDropdownt extends StatefulWidget {
  const MyDropdownt({super.key});

  @override
  State<MyDropdownt> createState() => _MyDropdowntState();
}

class _MyDropdowntState extends State<MyDropdownt> {
  static final data = [
    "Semester",
    "1st",
    "2nd",
    "3rd",
    "4th (N/A)",
    "5th (N/A)",
    "6th (N/A)",
    "7th (N/A)",
    "8th (N/A)"
  ];
  String initial = data.first.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        value: initial,
        items: data.map((String Items) {
          return DropdownMenuItem(
              value: Items,
              child:
                  "$Items".text.color(context.primaryColor).xl2.center.make());
        }).toList(),
        onChanged: (value) {
          setState(() {
            initial = value as String;
          });
        },
        
      ).centered(),
    ).wh(150, 40);
  }
}
