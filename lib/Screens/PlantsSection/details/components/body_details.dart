// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/PlantsSection/components/value_data.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final Products products;

  const BodyDetails({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          Image.asset(
            products.image,
            height: size.height * 0.3,
            width: size.width,
            fit: BoxFit.contain,
          ),
          // SizedBox(height: size.height * 0.03),
          // SizedBox(
          //   width: size.width * 0.92,
          //   child: Text(
          //     "Product name ",
          //     style: TextStyle(
          //       fontWeight: FontWeight.normal,
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          // SizedBox(height: size.height * 0.01),
          // SizedBox(
          //   width: size.width * 0.92,
          //   child: Text(
          //     products.title,
          //     style: TextStyle(
          //       fontWeight: FontWeight.w700,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),
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
              products.description,
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
          SizedBox(height: size.height * 0.009),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              products.store,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
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
              products.price,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.04),
          SizedBox(
            width: size.width * 0.9,
            child: CounterProduct(),
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

class CounterProduct extends StatefulWidget {
  const CounterProduct({Key? key}) : super(key: key);

  @override
  State<CounterProduct> createState() => _CounterProductState();
}

class _CounterProductState extends State<CounterProduct> {
  int productCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // buildOutlineButton(
        //   icon: Icons.remove_circle_outline_sharp,
        //   press: () {
        //     if (productCount > 1) {
        //       setState(() {
        //         productCount--;
        //       });
        //     }
        //   },
        // ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            onPressed: () {
              if (productCount > 1) {
                setState(() {
                  productCount--;
                });
              }
            },
            child: Icon(Icons.remove_circle_outline_sharp),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            productCount.toString().padLeft(2, "0"),
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
                productCount++;
              });
            },
            child: Icon(Icons.add_circle_outline_sharp),
          ),
        ),
        // buildOutlineButton(
        //   icon: Icons.add_circle_outline_sharp,
        //   press: () {
        //     setState(() {
        //       productCount++;
        //     });
        //   },
        // )
      ],
    );
  }

//   SizedBox buildOutlineButton({IconData? icon, Function? press}) {
//     return SizedBox(
//       width: 40,
//       height: 32,
//       child: OutlineButton(
//         padding: EdgeInsets.zero,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(13),
//         ),
//         onPressed: press!(),
//         child: Icon(icon),
//       ),
//     );
//   }

//   Function press(Function press) => press;
// }
}
