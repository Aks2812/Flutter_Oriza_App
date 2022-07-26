// ignore_for_file: must_be_immutable

import 'package:auth_oriza/components/text_field_container.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isPasswordVisible = false;
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isPasswordVisible,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Enter Password...",
          icon: Icon(
            Icons.lock,
            color: kBlackBase,
          ),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
          // border: InputBorder.none,
        ),
      ),
    );
  }
}
