import 'package:auth_oriza/Screens/ConfirmationPage2/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class ConfirmationPage2 extends StatelessWidget {
  const ConfirmationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kGreenBase,
      ),
      body: Body(),
      backgroundColor: kWhiteBase,
    );
  }
}
