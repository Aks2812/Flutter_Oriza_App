// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/PotsSection/components/value_data_pots.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final Products1 products1;

  const BodyDetails({
    Key? key,
    required this.products1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          Image.asset(
            products1.image,
            height: size.height * 0.3,
            width: size.width,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.03),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              "Description",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              products1.description,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.025),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              "Store",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              products1.store,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.025),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              "Price",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              products1.price,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.037),
          SizedBox(
            width: size.width * 0.9,
            child: CounterProduct1(),
          ),
          SizedBox(height: size.height * 0.015),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 22, left: 19),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: kGreenBase,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart_outlined),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.72,
                  child: Expanded(
                    child: SizedBox(
                      height: 40,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: kGreenBase,
                        onPressed: () {},
                        child: Text(
                          "Buy Now".toUpperCase(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kWhiteBase,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CounterProduct1 extends StatefulWidget {
  const CounterProduct1({Key? key}) : super(key: key);

  @override
  State<CounterProduct1> createState() => _CounterProduct1State();
}

class _CounterProduct1State extends State<CounterProduct1> {
  int productCount1 = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: () {
              if (productCount1 > 1) {
                setState(() {
                  productCount1--;
                });
              }
            },
            child: Icon(Icons.remove_circle_outline_sharp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            productCount1.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: () {
              setState(() {
                productCount1++;
              });
            },
            child: Icon(Icons.add_circle_outline_sharp),
          ),
        ),
      ],
    );
  }
}
