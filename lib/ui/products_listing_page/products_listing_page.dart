import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/products_listing_page/left_image_product_listing.dart';
import 'package:google_products/ui/products_listing_page/right_image_product_listing.dart';
import 'package:google_products/ui/products_listing_page/topbar.dart';
import 'package:google_products/ui/products_listing_page/two_products_Item_widget.dart';
import 'package:google_products/widgets/red_button.dart';


class ProductsListingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('assets/images/google_logo.png'),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/icons/menu.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            RightImageProductListing(screenHeight: _screenHeight, product: pixel),
            LeftImageProductListing(screenHeight: _screenHeight, product: stadia),
            TwoProductsItemWidget(
                product1: pixelStand,
                product2: dayDreamView,
                screenHeight: _screenHeight
            ),
            RedButton(buttonText: 'View all'),
          ],
        ),
      ),
    );
  }
}
