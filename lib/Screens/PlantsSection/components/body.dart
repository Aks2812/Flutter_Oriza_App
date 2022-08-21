import 'package:auth_oriza/Screens/PlantsSection/components/dummy_data.dart';
import 'package:auth_oriza/Screens/PlantsSection/components/value_data.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => setState(
                            () => productCount != 0
                                ? productCount--
                                : productCount,
                          ),
                          // onPressed: () {},
                          icon: Icon(Icons.remove_circle_outline_sharp),
                        ),
                        Text(productCount.toString()),
                        IconButton(
                          onPressed: () => setState(
                            () => productCount++,
                          ),
                          // onPressed: () {},
                          icon: Icon(Icons.add_circle_outline_sharp),
                        ),
                      ],
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

// Widget buildProduct(Products product) => Card(
//       elevation: 4,
//       margin: EdgeInsets.all(10),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundImage: AssetImage(product.image),
//         ),
//         title: Text(product.title),
//         subtitle: Text(product.price),
//         trailing: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.add),
//         ),
//       ),
//     );
