import 'package:flutter/material.dart';
import 'package:welcome_login_signup/ui/Login/Widgets/Login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginForm()
    );
  }
}
