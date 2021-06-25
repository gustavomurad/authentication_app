import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';

class SignUpDivider extends StatelessWidget {
  const SignUpDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: kPrimaryBlueColor,
              height: 1.5,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'or',
              style: TextStyle(
                color: kPrimaryBlueColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: kPrimaryBlueColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
