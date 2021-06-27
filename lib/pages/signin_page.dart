import 'package:authentication_app/backgrounds/background.dart';
import 'package:authentication_app/components/account_login_signup_button.dart';
import 'package:authentication_app/components/rounded_button.dart';
import 'package:authentication_app/components/rounded_field.dart';
import 'package:authentication_app/pages/signup_page.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seafarer/seafarer.dart';

class SignInPage extends StatefulWidget {
  static final String route = 'sign-up';

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedField(
                hintText: 'Your email',
                keyboardType: TextInputType.emailAddress,
                icon: Icon(
                  Icons.person,
                  color: primaryDarkColor,
                ),
              ),
              RoundedField(
                hintText: 'Your Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: !this.isPasswordVisible,
                icon: Icon(
                  Icons.password,
                  color: primaryDarkColor,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      this.isPasswordVisible = !this.isPasswordVisible;
                    });
                  },
                  child: Icon(
                    this.isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: primaryDarkColor,
                  ),
                ),
              ),
              RoundedButton(
                label: 'Sign In',
                onPressed: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AccountLoginSignupButton(
                isLogin: true,
                onTap: () => Routes.seafarer.navigate(
                  SignUpPage.route,
                  navigationType: NavigationType.popAndPushNamed,
                  transitions: [SeafarerTransition.zoom_in],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
