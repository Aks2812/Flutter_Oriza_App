// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, deprecated_member_use
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              minLines: 2,
              maxLines: 6,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                hintText: "Your Address....",
                labelText: "Enter Your Address Here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                ),
              ),
            ),
          ),
          FlatButton(
            splashColor: Colors.white60,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            color: kBlackBase,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return MainNavBar();
              //     },
              //   ),
              // );
            },
            child: Text(
              "SUBMIT ADDRESS",
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
