import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
          // MyDropdown(),
          // MyDropdownt(),
        ],
      ),
    );
  }
}

