import 'package:auth_oriza/Screens/TypesOfOrnamentalPlants/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class TypesOfOrnamentalPlantsPage extends StatelessWidget {
  const TypesOfOrnamentalPlantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Types of Ornamental Plants",
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
