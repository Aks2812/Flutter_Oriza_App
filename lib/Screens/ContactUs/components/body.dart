// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables
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
            "assets/images/Logo_Oriza 1.0.png",
            height: size.height * 0.45,
            width: size.width * 0.95,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.001),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "If you have any questions or suggestions about our privacy policy.\n\nDo not hesitate to contact us at Oriza@or.sativa.com.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
