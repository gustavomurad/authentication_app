import 'package:authentication_app/backgrounds/gradient_background.dart';
import 'package:authentication_app/components/account_login_signup_button.dart';
import 'package:authentication_app/components/rounded_button.dart';
import 'package:authentication_app/components/rounded_field.dart';
import 'package:authentication_app/components/signup_divider.dart';
import 'package:authentication_app/components/social_round_button.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seafarer/seafarer.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                'assets/images/rb-work.png',
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
                label: 'Sign Up',
                onPressed: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AccountLoginSignupButton(
                isLogin: false,
                onTap: () => Routes.seafarer.navigate(
                  "/login",
                  navigationType: NavigationType.popAndPushNamed,
                  transitions: [SeafarerTransition.zoom_in],
                ),
              ),
              SignUpDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialRoundButton(
                    socialIcon: 'assets/icons/apple-logo.png',
                    onTap: () {},
                  ),
                  SocialRoundButton(
                    socialIcon: 'assets/icons/facebook-logo.png',
                    onTap: () {},
                  ),
                  SocialRoundButton(
                    socialIcon: 'assets/icons/google-logo.png',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
