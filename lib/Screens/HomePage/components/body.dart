// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auth_oriza/Screens/PlantsSection/plants.dart';
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
            "assets/images/Slogan_Oriza.jpg",
            height: size.height * 0.33,
            width: size.width * 1,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: size.height * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PlantsSection();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: kGreenBaseOutline, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/images/Icon_Plant.png"),
                            height: size.height * 0.1,
                            width: size.width * 0.17,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(height: size.height * 0.0001),
                          Text(
                            "Plant",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: kGreenBaseOutline, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/images/Icon_Pot.png"),
                            height: size.height * 0.1,
                            width: size.width * 0.17,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(height: size.height * 0.0001),
                          Text(
                            "Pot",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: kGreenBaseOutline, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/images/Icon_Supply.png"),
                            height: size.height * 0.1,
                            width: size.width * 0.17,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: size.height * 0.0001),
                          Text(
                            "Supply",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: size.width * 0.11),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: kGreenBaseOutline, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/images/Icon_Store.png"),
                            height: size.height * 0.1,
                            width: size.width * 0.17,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(height: size.height * 0.0001),
                          Text(
                            "Store",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.11),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: kGreenBaseOutline, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/images/Icon_more2.png"),
                            height: size.height * 0.1,
                            width: size.width * 0.17,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: size.height * 0.0001),
                          Text(
                            "More",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
