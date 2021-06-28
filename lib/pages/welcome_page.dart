import 'package:authentication_app/backgrounds/background.dart';
import 'package:authentication_app/components/rounded_button.dart';
import 'package:authentication_app/components/welcome_logo.dart';
import 'package:authentication_app/pages/signin_page.dart';
import 'package:authentication_app/pages/signup_page.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:seafarer/seafarer.dart';

class WelcomePage extends StatelessWidget {
  static final String route = 'welcome';

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeLogo(),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                label: 'Sign In',
                onPressed: () => Routes.seafarer.navigate(
                  SignInPage.route,
                  transitions: [SeafarerTransition.zoom_in],
                ),
              ),
              RoundedButton(
                label: 'Sign Up',
                backgroundColor: primaryLightColor,
                onPressed: () => Routes.seafarer.navigate(
                  SignUpPage.route,
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
