import 'package:auth_oriza/Screens/TypesOfFertilizers/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class TypesOfFertilizersPage extends StatelessWidget {
  const TypesOfFertilizersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Types of Fertilizers",
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
