// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/PlantsSection/components/dummy_data.dart';
import 'package:auth_oriza/Screens/PlantsSection/components/value_data.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body1 extends StatefulWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  late List<Products> products;
  int productCount = 0;

  @override
  void initState() {
    super.initState();

    products = allProducts;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];

                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: kLightGreenBase),
                    ),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(product.image),
                    ),
                    title: Text(product.title),
                    subtitle: Text(product.price),
                    trailing: FlatButton.icon(
                      // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      splashColor: Colors.white38,
                      shape: StadiumBorder(),
                      color: kGreenBase,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return AccountSettings();
                        //     },
                        //   ),
                        // );
                      },
                      label: Text(
                        "Get",
                        style: TextStyle(
                          color: kWhiteBase,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      icon: Icon(
                        Icons.shopping_cart_checkout_sharp,
                        color: kWhiteBase,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
