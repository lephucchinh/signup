import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup/ui/Login/Widgets/Login_Images.dart';
import 'package:welcome_login_signup/ui/Signup/signup_screen.dart';
import 'package:welcome_login_signup/ui/Widgets/already_have_an_account_check.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_button.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_input_field.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_password_field.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LoginImages(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text('LOGIN',style: TextStyle(
                fontWeight: FontWeight.w700,
              ),),
              Positioned(
                top: size.height * 0.07,
                child: SvgPicture.asset('assets/icons/login.svg'),
                width: size.width * 0.6,
              ),
              SizedBox(height: size.height * 0.02,),
              RoundedInputField(
                hintText: 'Your Email',
                onChanged: (String value) {  },
                icon: Icons.person,
              ),
              RoundedPasswordField(
                value: (String value) {  },
              ),
              RoundedButton(
                text: 'LOGIN', press: () {},
              ),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                },
              ),
            ],
    ),
        )
    );
  }
}





