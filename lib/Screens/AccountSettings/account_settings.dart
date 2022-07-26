import 'package:auth_oriza/Screens/AccountSettings/components/body.dart';
import 'package:auth_oriza/Screens/ProfilePage/profile_page.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account Settings",
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
                  return ProfilePage();
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
