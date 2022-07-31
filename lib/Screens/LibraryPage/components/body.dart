// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auth_oriza/Screens/GardeningTipsSection/gardeningtipspage.dart';
import 'package:auth_oriza/Screens/TypesOfFertilizers/types_of_fertilizer.dart';
import 'package:auth_oriza/Screens/TypesOfOrnamentalPlants/types_of_plants.dart';
import 'package:auth_oriza/Screens/TypesOfOrnamentalPots/types_of_ornamental_pots.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 1,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  color: kLightGreenBase,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black38,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return GardeningTipsPage();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/images/Library_Tips.png"),
                          height: size.height * 0.18,
                          width: size.width * 0.26,
                          fit: BoxFit.fitWidth,
                        ),
                        // SizedBox(
                        //   height: size.height * 0.002,
                        //   width: size.width * 0.30,
                        // ),
                        Text(
                          "Gardening\nTips",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                          width: size.width * 0.30,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: kLightGreenBase,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black38,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TypesOfOrnamentalPlantsPage();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage(
                              "assets/images/LIbrary_Kind_of_Plant.png"),
                          height: size.height * 0.18,
                          width: size.width * 0.22,
                          fit: BoxFit.fitWidth,
                        ),
                        // SizedBox(
                        //   height: size.height * 0.002,
                        //   width: size.width * 0.30,
                        // ),
                        Text(
                          "Types of\nOrnamental Plants",
                          style: TextStyle(
                            fontSize: 12.2,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                          width: size.width * 0.30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  color: kLightGreenBase,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black38,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TypesOfFertilizersPage();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage(
                              "assets/images/Library_Fertilizer.png"),
                          height: size.height * 0.18,
                          width: size.width * 0.22,
                          fit: BoxFit.contain,
                        ),
                        // SizedBox(
                        //   height: size.height * 0.002,
                        //   width: size.width * 0.30,
                        // ),
                        Text(
                          "Types of\nFertilizers",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                          width: size.width * 0.30,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: kLightGreenBase,
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black38,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TypesOfOrnamentalPotsPage();
                          },
                        ),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/images/Library_Pots.png"),
                          height: size.height * 0.18,
                          width: size.width * 0.24,
                          fit: BoxFit.fitWidth,
                        ),
                        // SizedBox(
                        //   height: size.height * 0.002,
                        //   width: size.width * 0.30,
                        // ),
                        Text(
                          "Types of\n Ornamental Pots",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                          width: size.width * 0.30,
                        ),
                      ],
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
