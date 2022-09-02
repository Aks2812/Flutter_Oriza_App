import 'package:auth_oriza/Screens/PlantsSection/components/value_data.dart';
import 'package:auth_oriza/Screens/PlantsSection/details/components/body_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class PlantsDetails extends StatelessWidget {
  final Products products;

  const PlantsDetails({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          products.title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: kGreenBase,
      ),
      body: BodyDetails(),
    );
  }
}
