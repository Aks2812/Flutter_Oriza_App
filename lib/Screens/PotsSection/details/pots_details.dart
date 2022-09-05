import 'package:auth_oriza/Screens/PotsSection/components/value_data_pots.dart';
import 'package:auth_oriza/Screens/PotsSection/details/components/body_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class PotsDetails extends StatelessWidget {
  final Products1 products1;

  const PotsDetails({
    Key? key,
    required this.products1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyDetails(products1: products1),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: Text(
        products1.title,
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
