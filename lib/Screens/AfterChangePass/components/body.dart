// ignore_for_file: deprecated_member_use
import 'package:auth_oriza/Screens/ConfirmationPage2/confirmation2.dart';
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
              "At least 12 characters, mix uppercase, lowercase letters, numbers and symbols: e.g., ! @ # ?",
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
                hintText: "Enter New Password...",
                icon: Icon(
                  Icons.lock,
                  color: kBlackBase,
                ),
              ),
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
                hintText: "Confirm Password...",
                icon: Icon(
                  Icons.lock,
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
                    return ConfirmationPage2();
                  },
                ),
              );
            },
            child: Text(
              "CONFIRM",
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
