// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../models/app.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(7.10),
      child: Card(
        child:  ListTile(
          // ignore: prefer_const_constructors
          tileColor: Color.fromARGB(255, 63, 168, 67),
          selectedTileColor: Colors.red,
          textColor: Colors.white,

          leading: Image.network(
            item.image,
          ),
          title: Text(
            item.name,
            // style: TextStyle(
            //     color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(item.desc,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          trailing: Text(
            item.size,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
