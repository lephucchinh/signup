import 'package:flutter/material.dart';
import 'package:welcome_login_signup/constants.dart';
import 'package:welcome_login_signup/ui/Widgets/text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none
        ),
        cursorColor: kPrimaryColor,
        onChanged: onChanged,
      ),
    );
  }
}