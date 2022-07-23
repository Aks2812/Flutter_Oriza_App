// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/ContactUs/contact_us.dart';
import 'package:auth_oriza/Screens/Login/login_screen.dart';
import 'package:auth_oriza/Screens/Privacy&Policy/privacy_policy.dart';
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
          // Image.asset(
          //   "assets/images/Profile_user.png",
          //   height: size.height * 0.2,
          //   width: size.width * 0.2,
          //   fit: BoxFit.fitWidth,
          // ),
          SizedBox(height: size.height * 0.062),
          Material(
            elevation: 12,
            shape: CircleBorder(),
            child: InkWell(
              onTap: null,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: kColorOutlineProfileUser,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Ink.image(
                  image: AssetImage("assets/images/Profile_user.png"),
                  height: 105,
                  width: 105,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.85,
            height: size.height * 0.05,
            child: FlatButton.icon(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: StadiumBorder(),
              color: kGreenBase,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LoginScreen();
                //     },
                //   ),
                // );
              },
              label: Text(
                "ACCOUNT SETTINGS",
                style: TextStyle(
                  color: kWhiteBase,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.settings,
                color: kWhiteBase,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.85,
            height: size.height * 0.05,
            child: FlatButton.icon(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: StadiumBorder(),
              color: kGreenBase,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LoginScreen();
                //     },
                //   ),
                // );
              },
              label: Text(
                "ADDRESS SETTINGS",
                style: TextStyle(
                  color: kWhiteBase,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.map,
                color: kWhiteBase,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.85,
            height: size.height * 0.05,
            child: FlatButton.icon(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: StadiumBorder(),
              color: kGreenBase,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PrivacyPolicy();
                    },
                  ),
                );
              },
              label: Text(
                "PRIVACY & POLICY",
                style: TextStyle(
                  color: kWhiteBase,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.shield,
                color: kWhiteBase,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.85,
            height: size.height * 0.05,
            child: FlatButton.icon(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: StadiumBorder(),
              color: kGreenBase,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContactUs();
                    },
                  ),
                );
              },
              label: Text(
                "CONTACT US",
                style: TextStyle(
                  color: kWhiteBase,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.phone,
                color: kWhiteBase,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.85,
            height: size.height * 0.05,
            child: FlatButton.icon(
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: StadiumBorder(),
              color: kGreenBase,
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
              label: Text(
                "LOGOUT",
                style: TextStyle(
                  color: kWhiteBase,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.logout,
                color: kWhiteBase,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
