import 'package:flutter/material.dart';

class ProductDetailBackground extends StatelessWidget {

  final screenHeight, screenWidth;

  const ProductDetailBackground({Key key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.20,
          top: -screenWidth * 1.0,
          child: Container(
            height: screenHeight * 1.2,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0000FF)
            ),
          ),
        ),
        Positioned(
            left: 20,
            right: 20,
            top: screenHeight * 0.20 /* 20% of screen height*/,
            child: Image.asset(
                "assets/images/google_text_logo.png",
              color: Color(0xFFECECEC).withOpacity(0.5),
            )
        ),
      ],
    );
  }
}
