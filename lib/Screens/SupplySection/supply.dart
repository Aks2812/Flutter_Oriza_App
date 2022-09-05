import 'package:auth_oriza/Screens/SupplySection/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class SupplySection extends StatelessWidget {
  const SupplySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Supply",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.shopping_cart_checkout),
        //     onPressed: () {},
        //   ),
        // ],
        backgroundColor: kGreenBase,
      ),
      body: Body3(),
    );
  }
}
