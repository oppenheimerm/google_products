import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';

class BlueButton extends StatelessWidget {

  final Product product;

  const BlueButton({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        print('BlueButton pressed');
      },
      child: Text(
        product.buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10.0
        ),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
