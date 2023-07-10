import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup/constants.dart';
import 'package:welcome_login_signup/ui/Login/login_screen.dart';
import 'package:welcome_login_signup/ui/Signup/signup_screen.dart';
import 'package:welcome_login_signup/ui/Welcome/Widgets/backgroud.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "WELCOME TO EDU",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 15,
              color: Color(0xBA000000),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.5,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          RoundedButton(
            text: 'SIGN UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
            },
          ),
        ],
      ),
    ));
  }
}
