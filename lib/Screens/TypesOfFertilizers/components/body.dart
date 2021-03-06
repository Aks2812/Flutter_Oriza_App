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
            "assets/images/Types_of_Fertilizers.jpg",
            height: size.height * 0.3,
            width: size.width * 1,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n1. Organic and Inorganic Fertilizers:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "- Organic fertilizers are made from natural and organic materials—mainly manure, compost, or other animal and plant products.\n\n- Inorganic fertilizers are made of up chemical components that contain necessary nutrients.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.015),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n2. Nitrogen Fertilizers:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "Nitrogen is a plan nutrient responsible for growth. This ingredient is useful in fertilizers, particularly during the middle stages of a plants lifespan.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n3. Phosphate Fertilizers:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "Phosphorous is a nutrient that plants need continuously. Throughout their lifecycle, phosphorous help to strengthen the root system and stems of a plant.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
