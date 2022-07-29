// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/AccountSettings/account_settings.dart';
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
          Image.asset(
            "assets/images/Confirmation_Email_Username.png",
            height: size.height * 0.35,
            width: size.width * 0.5,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.001),
          SizedBox(
            width: size.width * 0.95,
            child: Text(
              "Your username and email address successfully changed.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: size.height * 0.035),
          FlatButton(
            splashColor: Colors.white60,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65),
            color: kBlackBase,
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AccountSettings();
                  },
                ),
              );
            },
            child: Text(
              "OK",
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
