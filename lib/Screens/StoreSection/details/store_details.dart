import 'package:auth_oriza/Screens/StoreSection/components/value_data_store.dart';
import 'package:auth_oriza/Screens/StoreSection/details/components/body_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class StoreDetails extends StatelessWidget {
  final Stores stores;

  const StoreDetails({
    Key? key,
    required this.stores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyDetails(stores: stores),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: Text(
        stores.title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.star_border_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_add_alt_1_outlined),
        ),
      ],
      backgroundColor: kGreenBase,
      elevation: 0,
    );
  }
}
