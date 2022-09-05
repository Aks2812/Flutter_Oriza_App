// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/SupplySection/components/dummy_data_supply.dart';
import 'package:auth_oriza/Screens/SupplySection/components/value_data_supply.dart';
import 'package:auth_oriza/Screens/SupplySection/details/supply_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body3 extends StatefulWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  late List<Products2> products2;
  int productCount = 0;

  @override
  void initState() {
    super.initState();

    products2 = allProducts2;
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
              itemCount: products2.length,
              itemBuilder: (BuildContext context, int index) {
                final product2 = products2[index];

                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: kLightGreenBase),
                    ),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(product2.image),
                    ),
                    title: Text(product2.title),
                    subtitle: Text(product2.price),
                    trailing: FlatButton(
                      splashColor: Colors.white38,
                      shape: StadiumBorder(),
                      color: kGreenBase,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SupplyDetails(
                                products2: products2[index],
                              );
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Get",
                        style: TextStyle(
                          color: kWhiteBase,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
