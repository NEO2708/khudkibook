// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:khudkibook/MainPages/Civil/sem1/cv1.dart';
import 'package:khudkibook/MainPages/Computer/sem1/cmp1.dart';
import 'package:khudkibook/MainPages/Electrical/sem1/el1.dart';
import 'package:khudkibook/MainPages/Mechnical/sem1/me1.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:velocity_x/velocity_x.dart';

import 'MainPages/It/sem1/it1.dart';

class DropDownPage extends StatefulWidget {
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
    subject.add({"id": 1, "label": "Information Technology:16"});
    subject.add({"id": 2, "label": "Computer:"});
    subject.add({"id": 3, "label": "Electrical:"});
    subject.add({"id": 4, "label": "Civil:"});
    subject.add({"id": 5, "label": "Mechanical:"});
    sem = [
      {"ID": 10, "NAME": "1"},
      {"ID": 20, "NAME": "2"},
      {"ID": 30, "NAME": "3"},
      {"ID": 40, "NAME": "4(N/A)"},
      {"ID": 50, "NAME": "5(N/A)"},
      {"ID": 60, "NAME": "6(N/A)"},
      {"ID": 70, "NAME": "7(N/A)"},
      {"ID": 80, "NAME": "8(N/A)"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: "Select All Fields".text.xl3.color(context.primaryColor).make(),
            //   backgroundColor: Colors.transparent,
            //   elevation: 0.0,
            // ),
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(children: [
          Image.network(
                  "https://cdn2.iconfinder.com/data/icons/diwali-2027/32/shree_sree_hindu_gita_book_holy_religion-512.png")
              .w(300),
          FormHelper.dropDownWidgetWithLabel(
            context,
            "Branch*",
            "Select  Branch",
            subjectId,
            subject,
            (onChanged) {
              subjectId = onChanged;
              print("The value is $subjectId");
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
              print(semId);
            },
            (onValidate) {},
            borderColor: Colors.black,
            textColor: Colors.black,
            optionLabel: "NAME",
            optionValue: "ID",
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(onTap: () {
            // I.T
            if (subjectId == "1") {
              if (semId == "10") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => It1HomePage(),
                    ));
              }
              // if (semId == "20") {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const ItPage2(),
              //       ));
              // }
              // if (semId == "30") {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const ItPage3(),
              //       ));
              // }
              // if (semId == "40") {}
              // if (semId == "50") {}
              // if (semId == "60") {}
              // if (semId == "70") {}
              // if (semId == "50") {}
            }

              // Computer
              if (subjectId == "2") {
                if (semId == "10") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Cmp1HomePage(),
                      ));
                }
            //     if (semId == "20") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const CmpPage2(),
            //           ));
            //     }
            //     if (semId == "30") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const CmpPage3(),
            //           ));
            //     }
            //     if (semId == "40") {}
            //     if (semId == "50") {}
            //     if (semId == "60") {}
            //     if (semId == "70") {}
            //     if (semId == "50") {}
             }
              // Electrical
              if (subjectId == "3") {
                if (semId == "10") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  El1HomePage(),
                      ));
                }
            //     if (semId == "20") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const ElePage2(),
            //           ));
            //     }
            //     if (semId == "30") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const ElePage3(),
            //           ));
            //     }
            //     if (semId == "40") {}
            //     if (semId == "50") {}
            //     if (semId == "60") {}
            //     if (semId == "70") {}
            //     if (semId == "50") {}
             }
              // Civil
              if (subjectId == "4") {
                if (semId == "10") {
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //     content: "Not Avilable Yet, Check Agin Later"
                  //         .text.xl2.red500
                  //         .make()));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Cv1HomePage(),
                      ));
                }
            //     if (semId == "20") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const CivPage2(),
            //           ));
            //     }
            //     if (semId == "30") {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const CivPage3(),
            //           ));
            //     }
            //     if (semId == "40") {}
            //     if (semId == "50") {}
            //     if (semId == "60") {}
            //     if (semId == "70") {}
            //     if (semId == "50") {}
               }
            // Mechanical
            if (subjectId == "5") {
              if (semId == "10") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Me1HomePage(),
                    ));
              }
              //     if (semId == "20") {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) =>  Me1HomePage(),
              //           ));
              //     }
              //     if (semId == "30") {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) =>  Me1HomePage(),
              //           ));
              //     }
              //     if (semId == "40") {}
              //     if (semId == "50") {}
              //     if (semId == "60") {}
              //     if (semId == "70") {}
              //     if (semId == "50") {}
              //   }
              // },
            }},
              child:
              Container(
                child: "Submit".text.color(Colors.white).xl5.center.make(),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
              ).backgroundColor(Colors.white)
              
          )
        ]).backgroundColor(Colors.white).w(500),
      ),
    )));
  }
}
