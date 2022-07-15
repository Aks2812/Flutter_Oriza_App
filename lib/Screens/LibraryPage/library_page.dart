import 'package:auth_oriza/Screens/LibraryPage/components/body.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Library",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: kGreenBase,
      ),
      body: Body(),
    );
  }
}
