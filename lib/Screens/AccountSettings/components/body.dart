// ignore_for_file: deprecated_member_use

import 'package:auth_oriza/Screens/ChangePassScreens/change_pass_screens.dart';
import 'package:auth_oriza/Screens/ConfirmationPage1/confirmation1.dart';
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
          Material(
            elevation: 15,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white54,
              child: Ink.image(
                image: AssetImage("assets/images/Pp_Gamer.png"),
                height: 86,
                width: 86,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.001),
          FlatButton(
            // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            // color: kBlackBase,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return ForgotPasswordScreen();
              //     },
              //   ),
              // );
            },
            child: Text(
              "Edit Profile Picture",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: size.height * 0.001),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Change Your Username...",
                icon: Icon(
                  Icons.person,
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
                hintText: "Change Your Email...",
                icon: Icon(
                  Icons.email,
                  color: kBlackBase,
                ),
              ),
            ),
          ),
          FlatButton(
            splashColor: Colors.white60,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            color: kBlackBase,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ConfirmationPage1();
                  },
                ),
              );
            },
            child: Text(
              "SAVE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.001),
          FlatButton(
            // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            // color: kBlackBase,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ChangePassScreens();
                  },
                ),
              );
            },
            child: Text(
              "CHANGE PASSWORD?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
