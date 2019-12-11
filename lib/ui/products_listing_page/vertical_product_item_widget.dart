import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';

class VerticalProductItemWidget extends StatelessWidget {
  final Product product;
  final double screenHeight;

  const VerticalProductItemWidget({Key key, this.product, this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.backgroundColour,
      child: Column(
        children: <Widget>[
          Image.asset(
            product.imageUrl,
          height: screenHeight * 0.15,),
          SizedBox(
            height: 5.0,
          ),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B43),
              fontSize: 14
            ),
          ),
          Text(
            product.description,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B3B43),
                fontSize: 8
            ),
          )
        ],
      ),
    );
  }
}
