// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:auth_oriza/Screens/AfterChangePass/after_change_pass.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          SizedBox(
            height: size.height * 0.048,
            width: size.width * 0.9,
            child: Text(
              "Keep your account safe, please verify your identity by entering your password.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.0001),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Current Password...",
                icon: Icon(
                  Icons.key,
                  color: kBlackBase,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.015),
          FlatButton(
            splashColor: Colors.white60,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            color: kBlackBase,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AfterChangePass();
                  },
                ),
              );
            },
            child: Text(
              "CONTINUE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
