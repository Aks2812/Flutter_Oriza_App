import 'package:auth_oriza/Screens/SupplySection/components/value_data_supply.dart';
import 'package:auth_oriza/Screens/SupplySection/details/components/body_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class SupplyDetails extends StatelessWidget {
  final Products2 products2;

  const SupplyDetails({
    Key? key,
    required this.products2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyDetails(products2: products2),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: Text(
        products2.title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_checkout_outlined),
        ),
      ],
      backgroundColor: kGreenBase,
      elevation: 0,
    );
  }
}
