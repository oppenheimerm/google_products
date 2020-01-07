import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/product_detail_page/product_content_widget.dart';
import 'package:google_products/ui/product_detail_page/product_detail_top_bar.dart';
import 'product_detail_background.dart';

class ProductDetailPage extends StatelessWidget {

  final Product product;

  const ProductDetailPage({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProductDetailBackground(
            screenHeight: screenHeight,
            screenWidth: screenWidth
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductDetailTopBar(),
                ProductContentWidget(screenHeight: screenHeight, product: product,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
