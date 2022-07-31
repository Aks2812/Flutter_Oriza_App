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
            "assets/images/Types_of_Ornamental_Pots.jpg",
            height: size.height * 0.27,
            width: size.width * 1,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n1. HANGING POTS",
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
              "If you do not have much ground space in your home to set up a garden or place the pots, hanging pots can be the best alternative for you.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n2. RAILING PLANTERS",
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
              "Due to the compact size of houses in urban areas, people do not get any space for gardening.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n3. DECORATIVE POTS AND URN PLANTERS",
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
              "These pots are eye-catching and provide an enhanced look to your garden. They come in different shapes and sizes.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n4. PLASTIC POTS",
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
              "Available in colourful options, plastic pots are an attractive option for indoor as well as outdoor gardening.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n5. METAL POTS",
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
              "Metal planters give an elegant and unique look to your garden. They are made from materials like tin or steel.",
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
