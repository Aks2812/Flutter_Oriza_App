import 'package:auth_oriza/components/text_field_container.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class RoundedUserNameField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedUserNameField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedUserNameField> createState() => _RoundedUserNameFieldState();
}

class _RoundedUserNameFieldState extends State<RoundedUserNameField> {
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Enter Username...",
          icon: Icon(
            Icons.person,
            color: kBlackBase,
          ),
          // border: InputBorder.none,
        ),
      ),
    );
  }
}
