import 'package:flutter/material.dart';
import 'package:google_products/ui/products_listing_page/topbar.dart';


class ProductsListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            TopBar()
          ],
        ),
      ),
    );
  }
}
