// ignore_for_file: file_names

import 'package:auth_oriza/Screens/GardeningTipsSection/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class GardeningTipsPage extends StatelessWidget {
  const GardeningTipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Gardening Tips",
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
