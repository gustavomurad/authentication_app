import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: SvgPicture.asset(
              'assets/images/top.svg',
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            child: SvgPicture.asset(
              'assets/images/bitcoin-logo.svg',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            top: size.height * 0.85,
            child: SvgPicture.asset(
              'assets/images/bottom.svg',
              width: size.width * 1.1,
            ),
          ),
          this.child,
        ],
      ),
    );
  }
}
