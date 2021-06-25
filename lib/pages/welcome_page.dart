import 'package:authentication_app/backgrounds/gradient_background.dart';
import 'package:authentication_app/components/rounded_button.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seafarer/seafarer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
              Image.asset(
                'assets/images/rb-office.png',
                width: size.width * 0.8,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                label: 'LOGIN',
                onPressed: () => Routes.seafarer.navigate(
                  "/login",
                  transitions: [SeafarerTransition.zoom_in],
                ),
              ),
              RoundedButton(
                label: 'SIGN UP',
                backgroundColor: kPrimaryBlueLightColor,
                onPressed: () => Routes.seafarer.navigate(
                  "/signup",
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
