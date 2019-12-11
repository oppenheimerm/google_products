import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_listing_page/vertical_product_item_widget.dart';

class TwoProductsItemWidget extends StatelessWidget {
  final double screenHeight;
  final Product product1;
  final Product product2;

  const TwoProductsItemWidget(
      {Key key, this.screenHeight, this.product1, this.product2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: VerticalProductItemWidget(
              product: product1,
              screenHeight: screenHeight,
            ),
          ),
          Expanded(
            child: VerticalProductItemWidget(
              product: product2,
              screenHeight: screenHeight,
            ),
          ),
        ],
      ),
    );
  }
}
