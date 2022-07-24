// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/Login/login_screen.dart';
import 'package:auth_oriza/components/already_have_an_account_check.dart';
import 'package:auth_oriza/components/rounded_full_name_field.dart';
import 'package:auth_oriza/components/rounded_email_field.dart';
import 'package:auth_oriza/components/rounded_password_field.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 1,
      height: size.height * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Signup",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: size.height * 0.025),
          RoundedFullNameField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.0001),
          RoundedEmailField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.0001),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.0001),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.9,
            height: size.height * 0.05,
            child: FlatButton(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: kBlackBase,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "SIGNUP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.0001),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
