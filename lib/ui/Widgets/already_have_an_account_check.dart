import 'package:flutter/material.dart';
import 'package:welcome_login_signup/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool Login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({Key? key,
    this.Login = true,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Login ? "Don't have an Account ?" : 'Already have an Account ? ',
          style: TextStyle(
            color: kPrimaryColor,
          ),),
        InkWell(
            onTap: press,
            child: Text(
              Login ? "Sign Up" : 'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),)
        ),

      ],
    );
  }
}