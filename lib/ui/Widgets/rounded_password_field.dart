import 'package:flutter/material.dart';
import 'package:welcome_login_signup/constants.dart';
import 'package:welcome_login_signup/ui/Widgets/text_field_container.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> value;
  const RoundedPasswordField({Key? key,
    required this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: 'Password',
        ),
        onChanged: value,
      ),

    );
  }
}