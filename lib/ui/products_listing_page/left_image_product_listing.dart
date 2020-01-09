import 'package:flutter/material.dart';
import 'package:google_products/fade_page_route.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/product_detail_page/product_detail_page.dart';
import 'package:google_products/ui/products_listing_page/blue_button.dart';

class LeftImageProductListing extends StatelessWidget {

  final double screenHeight;
  final Product product;

  const LeftImageProductListing({Key key, this.screenHeight, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*MaterialPageRoute(
          builder: (context) => ProductDetailPage(product: product,)
        )*/
        /* We use  FadePageRoute to work with our Hero animation */
        Navigator.push(
            context,
            FadePageRoute(widget: ProductDetailPage(product: product,))
          );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32.0),
        height: screenHeight * 0.25,
        color: product.backgroundColour,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                  child: Image.asset(product.imageUrl),
                //  below "tag" property required for hero animation
                tag: product.name,
              )
            ),
            Expanded(
              flex: 4,
              child:Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 8.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF909090)
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    BlueButton(product: product,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
