import 'package:flutter/material.dart';
import 'package:khudkibook/dropdown.dart';

class MyFloat extends StatelessWidget {
  const MyFloat({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(onPressed: ((){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DropDownPage())));
                }),
                child:Icon(Icons.change_circle_outlined) ,);
  }
}