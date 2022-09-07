// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/StoreSection/components/value_data_store.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final Stores stores;

  const BodyDetails({
    Key? key,
    required this.stores,
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
            stores.image,
            height: size.height * 0.3,
            width: size.width,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.03),
          SizedBox(
            width: size.width * 0.92,
            child: Text(
              "Information",
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
              stores.description,
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
              "About",
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
              stores.about,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.25),
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
                    "Storefront".toUpperCase(),
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
    );
  }
}
