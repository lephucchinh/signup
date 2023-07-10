
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup/constants.dart';

class SocalIcon extends StatelessWidget {
  final String picture;
  final Function() press;
  const SocalIcon({Key? key, required this.picture, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kPrimaryLightColor,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(picture,
        width: 15,
        height: 15,
      ),
    );
  }
}