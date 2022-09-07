// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/StoreSection/components/dummy_data_store.dart';
import 'package:auth_oriza/Screens/StoreSection/components/value_data_store.dart';
import 'package:auth_oriza/Screens/StoreSection/details/store_details.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class BodyStore extends StatefulWidget {
  const BodyStore({Key? key}) : super(key: key);

  @override
  State<BodyStore> createState() => _BodyStoreState();
}

class _BodyStoreState extends State<BodyStore> {
  late List<Stores> stores;

  @override
  void initState() {
    super.initState();

    stores = allStores;
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
            itemCount: stores.length,
            itemBuilder: (BuildContext context, int index) {
              final store = stores[index];

              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2, color: kLightGreenBase),
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      store.image,
                    ),
                  ),
                  title: Text(store.title),
                  subtitle: Text(store.description),
                  trailing: FlatButton(
                    splashColor: Colors.white38,
                    shape: StadiumBorder(),
                    color: kGreenBase,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return StoreDetails(
                              stores: stores[index],
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Details",
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
          )),
        ],
      ),
    );
  }
}
