import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_signup/constants.dart';
import 'package:welcome_login_signup/ui/Login/login_screen.dart';
import 'package:welcome_login_signup/ui/Signup/Widgets/signup_images.dart';
import 'package:welcome_login_signup/ui/Widgets/already_have_an_account_check.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_button.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_input_field.dart';
import 'package:welcome_login_signup/ui/Widgets/rounded_password_field.dart';
import 'package:welcome_login_signup/ui/Widgets/socal_icon.dart';


class SignupForm extends StatelessWidget {
  const SignupForm({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return SignUpImages(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Text('GIGNUP',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            ),
            Positioned(
              top: size.height * 0.7,
                child: SvgPicture.asset('assets/icons/signup.svg',),
              width: size.width * 0.6,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (String value) {  },
              icon: Icons.lock,
            ),
            RoundedPasswordField(
              value: (String value) {  },
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              Login: false,
                press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                }
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                      indent: size.width * 0.15,
                    )
                ),
                Text(
                  'OR',
                  style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                ),),
                Expanded(
                    child: Divider(
                      endIndent: size.width * 0.15,
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  picture: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SizedBox(
                  width: size.width * 0.11,
                ),
                SocalIcon(
                  picture: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SizedBox(
                  width: size.width * 0.11,
                ),
                SocalIcon(
                  picture: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),

    );
  }
}




