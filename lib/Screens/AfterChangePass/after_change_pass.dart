import 'package:auth_oriza/Screens/AccountSettings/account_settings.dart';
import 'package:auth_oriza/Screens/AfterChangePass/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class AfterChangePass extends StatelessWidget {
  const AfterChangePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Change Password",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AccountSettings();
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: kGreenBase,
      ),
      body: Body(),
    );
  }
}
