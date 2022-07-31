import 'package:auth_oriza/Screens/TypesOfOrnamentalPots/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class TypesOfOrnamentalPotsPage extends StatelessWidget {
  const TypesOfOrnamentalPotsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Types of Ornamental Pots",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: kGreenBase,
      ),
      body: Body(),
    );
  }
}
