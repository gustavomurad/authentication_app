import 'package:authentication_app/backgrounds/gradient_background.dart';
import 'package:authentication_app/components/account_login_signup_button.dart';
import 'package:authentication_app/components/rounded_button.dart';
import 'package:authentication_app/components/rounded_field.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seafarer/seafarer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: GradientBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/logo_rb.svg',
                width: size.width * 0.6,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Image.asset(
                'assets/images/rb-university.png',
                height: size.height * 0.25,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedField(
                hintText: 'Your email',
                keyboardType: TextInputType.emailAddress,
                icon: Icon(
                  Icons.person,
                  color: kPrimaryBlueColor,
                ),
              ),
              RoundedField(
                hintText: 'Your Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: !this.isPasswordVisible,
                icon: Icon(
                  Icons.password,
                  color: kPrimaryBlueColor,
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
                    color: kPrimaryBlueColor,
                  ),
                ),
              ),
              RoundedButton(
                label: 'LOGIN',
                onPressed: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AccountLoginSignupButton(
                isLogin: true,
                onTap: () => Routes.seafarer.navigate(
                  "/signup",
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
