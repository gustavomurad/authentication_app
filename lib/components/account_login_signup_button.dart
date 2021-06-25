import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';

class AccountLoginSignupButton extends StatelessWidget {
  final bool isLogin;
  final GestureTapCallback? onTap;

  const AccountLoginSignupButton({
    Key? key,
    this.onTap,
    required this.isLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.isLogin
                ? "Don't have an Account? "
                : "Already have an Account? ",
            style: TextStyle(
              color: kPrimaryBlueColor,
            ),
          ),
          GestureDetector(
            onTap: this.onTap,
            child: Text(
              this.isLogin ? "Sign Up" : "Sign In",
              style: TextStyle(
                color: kPrimaryBlueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
