// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1.dart';
import 'package:khudkibook/MainPages/Civil/sem2/cv2.dart';
import 'package:khudkibook/MainPages/Electrical/sem1/el1.dart';
import 'package:khudkibook/MainPages/Electrical/sem2/el2.dart';
import 'package:khudkibook/MainPages/It/sem2/it2.dart';
import 'package:khudkibook/MainPages/Mechnical/sem1/me1.dart';
import 'package:khudkibook/MainPages/Mechnical/sem2/me2.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:velocity_x/velocity_x.dart';

import 'MainPages/Computer/sem1/cmp1.dart';
import 'MainPages/Computer/sem2/cmp2.dart';
import 'MainPages/It/sem1/it1.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  List<dynamic> subject = [];
  List<dynamic> sem = [];
  String? subjectId;
  String? semId;
  String? msb;
  @override
  void initState() {
    super.initState();
    subject.add({"id": 4, "label": "Civil:06"});
    subject.add({"id": 2, "label": "Computer:07"});
    subject.add({"id": 3, "label": "Electrical:09"});
    subject.add({"id": 1, "label": "Information Technology:16"});
    subject.add({"id": 5, "label": "Mechanical:19"});
    sem = [
      {"ID": 10, "NAME": "1"},
      {"ID": 20, "NAME": "2"},
      {"ID": 30, "NAME": "3(N/A)"},
      {"ID": 40, "NAME": "4(N/A)"},
      {"ID": 50, "NAME": "5(N/A)"},
      {"ID": 60, "NAME": "6(N/A)"},
      {"ID": 70, "NAME": "7(N/A)"},
      {"ID": 80, "NAME": "8(N/A)"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: onlyLight,
      child: SafeArea(
          child: Scaffold(

              appBar: AppBar(
                title: "Select All Fields".text.xl3.color(Colors.black).make(),
                backgroundColor: Colors.white              ,
                elevation: 0.0,
              ),
              body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            Hero(
              tag: "hello",
              child: Image.network(
                      "https://cdn2.iconfinder.com/data/icons/diwali-2027/32/shree_sree_hindu_gita_book_holy_religion-512.png")
                  .w(300),
            ),
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Branch*",
              "Select  Branch",
              subjectId,
              subject,
              (onChanged) {
                subjectId = onChanged;
              },
              (onValidate) {
                if (subjectId == "0") {
                  return "Chosse One";
                }
              },
              borderColor: Colors.black,
              borderWidth: 2,
              hintColor: Colors.black,
              optionValue: "id",
              optionLabel: "label",
            ),
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Semester*",
              "Select Semester",
              semId,
              sem,
              (onChanged) {
                semId = onChanged;
              },
              (onValidate) {},
              borderColor: Colors.black,
              textColor: Colors.black,
              optionLabel: "NAME",
              optionValue: "ID",
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  // I.T
                  if (subjectId == "1") {
                    if (semId == "10") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => It1HomePage(),
                          ));
                    }

                    if (semId == "20") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => It2HomePage(),
                          ));
                    }
                    if (semId == "30") {
                      na(context);
                    }
                    if (semId == "40") {
                      na(context);
                    }
                    if (semId == "50") {
                      na(context);
                    }
                    if (semId == "60") {
                      na(context);
                    }
                    if (semId == "70") {
                      na(context);
                    }
                    if (semId == "80") {
                      na(context);
                    }
                  }

                  // Computer
                  if (subjectId == "2") {
                    if (semId == "10") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cmp1HomePage(),
                          ));
                    }
                    if (semId == "20") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cmp2HomePage(),
                          ));
                    }
                    if (semId == "30") {
                      na(context);
                    }
                    if (semId == "40") {
                      na(context);
                    }
                    if (semId == "50") {
                      na(context);
                    }
                    if (semId == "60") {
                      na(context);
                    }
                    if (semId == "70") {
                      na(context);
                    }
                    if (semId == "80") {
                      na(context);
                    }
                  }
                  // Electrical
                  if (subjectId == "3") {
                    if (semId == "10") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => El1HomePage(),
                          ));
                    }
                    if (semId == "20") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => El2HomePage(),
                          ));
                    }
                    if (semId == "30") {
                      na(context);
                    }
                    if (semId == "40") {
                      na(context);
                    }
                    if (semId == "50") {
                      na(context);
                    }
                    if (semId == "60") {
                      na(context);
                    }
                    if (semId == "70") {
                      na(context);
                    }
                    if (semId == "80") {
                      na(context);
                    }
                  }
                  // Civil
                  if (subjectId == "4") {
                    if (semId == "10") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cv1HomePage(),
                          ));
                    }
                    if (semId == "20") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cv2HomePage(),
                          ));
                    }
                    if (semId == "30") {
                      na(context);
                    }
                    if (semId == "40") {
                      na(context);
                    }
                    if (semId == "50") {
                      na(context);
                    }
                    if (semId == "60") {
                      na(context);
                    }
                    if (semId == "70") {
                      na(context);
                    }
                    if (semId == "80") {
                      na(context);
                    }
                  }
                  // Mechanical
                  if (subjectId == "5") {
                    if (semId == "10") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Me1HomePage(),
                          ));
                    }
                    if (semId == "20") {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Me2HomePage(),
                          ));
                    }
                    if (semId == "30") {
                      na(context);
                    }
                    if (semId == "40") {
                      na(context);
                    }
                    if (semId == "50") {
                      na(context);
                    }
                    if (semId == "60") {
                      na(context);
                    }
                    if (semId == "70") {
                      na(context);
                    }
                    if (semId == "80") {
                      na(context);
                    }
                  }
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: "Submit".text.color(Colors.white).xl5.center.make(),
                ).backgroundColor(Colors.white))
          ]).backgroundColor(Colors.white).w(500),
        ),
      ))),
    );
  }
}

final ThemeData onlyLight = ThemeData(brightness: Brightness.light);
na(context) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: "Not Avilable Yet, Check Again Later".text.xl2.red500.make()));
}
