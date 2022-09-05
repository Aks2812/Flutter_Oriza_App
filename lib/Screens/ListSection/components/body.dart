import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BodyList extends StatefulWidget {
  const BodyList({Key? key}) : super(key: key);

  @override
  State<BodyList> createState() => _BodyListState();
}

class _BodyListState extends State<BodyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: kGreenBase,
        overlayColor: kGreyBase,
        children: [
          SpeedDialChild(
            child: Icon(Icons.border_color_sharp),
            label: "New list",
          ),
          SpeedDialChild(
            child: Icon(Icons.delete_forever),
            label: "Delete list",
          ),
        ],
      ),
      body: Center(
          child: Text(
        "No list created",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.center,
      )),
    );
  }
}
