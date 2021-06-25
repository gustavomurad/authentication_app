import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';

class SocialRoundButton extends StatelessWidget {
  final String socialIcon;
  final GestureTapCallback onTap;

  const SocialRoundButton({
    Key? key,
    required this.onTap,
    required this.socialIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kPrimaryBlueLightColor,
        ),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 32,
        onPressed: this.onTap,
        icon: Image.asset(
          this.socialIcon,
        ),
      ),
    );
  }
}
