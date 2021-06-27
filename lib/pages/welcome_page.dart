import 'package:authentication_app/backgrounds/background.dart';
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
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: SvgPicture.asset(
                      'assets/images/bitcoin-network-2.svg',
                      height: size.height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: Container(
                      width: size.width * 0.8,
                      child: Text(
                        'Bitcoin is an innovative payment network and a new kind of money.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                label: 'Sign In',
                onPressed: () => Routes.seafarer.navigate(
                  "/login",
                  transitions: [SeafarerTransition.zoom_in],
                ),
              ),
              RoundedButton(
                label: 'Sign Up',
                backgroundColor: primaryLightColor,
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
