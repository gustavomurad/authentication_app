import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
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
    );
  }
}
