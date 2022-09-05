import 'package:auth_oriza/Screens/ListSection/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "List",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: kGreenBase,
        elevation: 0,
      ),
      body: BodyList(),
    );
  }
}
