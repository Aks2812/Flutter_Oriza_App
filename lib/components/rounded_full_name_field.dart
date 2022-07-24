import 'package:auth_oriza/components/text_field_container.dart';
import 'package:auth_oriza/constant.dart';
import 'package:flutter/material.dart';

// class RoundedFullName extends StatelessWidget {
//   final String hintText;
//   final IconData icon;
//   final ValueChanged<String> onChanged;
//   const RoundedFullName({
//     Key? key,
//     required this.hintText,
//     this.icon = Icons.person,
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

class RoundedFullNameField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedFullNameField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedFullNameField> createState() => _RoundedFullNameFieldState();
}

class _RoundedFullNameFieldState extends State<RoundedFullNameField> {
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Enter Full Name...",
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
