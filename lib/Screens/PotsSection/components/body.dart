// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/PotsSection/components/dummy_data_pots.dart';
import 'package:auth_oriza/Screens/PotsSection/components/value_data_pots.dart';
import 'package:auth_oriza/Screens/PotsSection/details/pots_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  late List<Products1> products1;
  int productCount = 0;

  @override
  void initState() {
    super.initState();

    products1 = allProducts1;
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
              itemCount: products1.length,
              itemBuilder: (BuildContext context, int index) {
                final product1 = products1[index];

                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: kLightGreenBase)),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(product1.image),
                    ),
                    title: Text(product1.title),
                    subtitle: Text(product1.price),
                    trailing: FlatButton(
                      splashColor: Colors.white38,
                      shape: StadiumBorder(),
                      color: kGreenBase,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PotsDetails(
                                products1: products1[index],
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
          ),
        ],
      ),
    );
  }
}
