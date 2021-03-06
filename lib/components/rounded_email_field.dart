import 'package:auth_oriza/components/text_field_container.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

// class RoundedEmailField extends StatelessWidget {
//   final String hintText;
//   final IconData icon;
//   final ValueChanged<String> onChanged;
//   const RoundedEmailField({
//     Key? key,
//     required this.hintText,
//     this.icon = Icons.email,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextField(
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           icon: Icon(
//             icon,
//             color: kBlackBase,
//           ),
//           hintText: hintText,
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }

class RoundedEmailField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedEmailField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedEmailField> createState() => _RoundedEmailFieldState();
}

class _RoundedEmailFieldState extends State<RoundedEmailField> {
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Enter Email...",
          icon: Icon(
            Icons.email,
            color: kBlackBase,
          ),
          // border: InputBorder.none,
        ),
      ),
    );
  }
}
