// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 1,
      height: size.height * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/Slogan_Oriza.jpg"),
        ],
      ),
    );
  }
}
