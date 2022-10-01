import 'package:flutter/material.dart';
import 'package:khudkibook/dropdown.dart';
import 'package:velocity_x/velocity_x.dart';

class MyFloat extends StatelessWidget {
  const MyFloat({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(onPressed: ((){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DropDownPage())));
                }),
                backgroundColor: Colors.orange,
                child:Icon(Icons.change_circle_outlined).iconColor(context.primaryColor) ,);
  }
}