import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const RoundedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = primaryColor,
    this.textColor = primaryDarkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 40.0,
          ),
          backgroundColor: this.backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(29.0),
            ),
          ),
        ),
        child: Text(
          this.label,
          style: TextStyle(color: this.textColor, fontWeight: FontWeight.bold),
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
