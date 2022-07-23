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
              "Privacy & Policy was last updated on 21 July 2022.\n\n\nThis Privacy Policy describes Our Ppolicies and procedures on the collection, use and disclosure of your information when you use the service and tells you about your privacy rights and how the law protects you.\n\nWe use your personal data to provide and improve the service.\n\nBy using the service, you agree to the collection and use of information in accordance with this privacy policy.",
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
