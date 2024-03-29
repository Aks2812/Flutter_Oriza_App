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
      appBar: buildappbar(context),
      body: BodyDetails(products: products),
    );
  }

  AppBar buildappbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: Text(
        products.title,
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
