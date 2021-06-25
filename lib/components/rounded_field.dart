import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedField extends StatelessWidget {
  final String hintText;
  final Widget? icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundedField({
    Key? key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: kPrimaryBlueLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        keyboardType: this.keyboardType,
        obscureText: this.obscureText,
        controller: this.controller,
        decoration: InputDecoration(
          hintText: this.hintText,
          icon: this.icon,
          border: InputBorder.none,
          suffixIcon: this.suffixIcon,
        ),
      ),
    );
  }
}
