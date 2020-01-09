import 'package:flutter/material.dart';
import 'package:google_products/models/product.dart';
import 'package:google_products/ui/product_detail_page/icon_title_widget.dart';
import 'package:google_products/widgets/red_button.dart';

class ProductContentWidget extends StatelessWidget {

  final screenHeight;
  final Product product;

  const ProductContentWidget({Key key, this.screenHeight, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: screenHeight * 0.20,),
          // Wrapped in an Hero widget for our here animation. See:
          // LeftImageProductListing class Hero -> Image.asset
          Hero(
            tag: product.name,
              child: Image.asset(product.imageUrl,
                height:  screenHeight * 0.30,
              )),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Starting*",
              style: TextStyle(
                color: Color(0xFF909090),
                fontSize: 10,
                fontWeight: FontWeight.w900
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\£ ",
                      style: TextStyle(
                        color: Color(0xFF0000FF),
                        fontSize: 10.0
                      )
                    ),
                    TextSpan(
                        text: "${product.price} ",
                        style: TextStyle(
                            color: Color(0xFF0000FF),
                            fontSize: 18.0,
                          fontWeight: FontWeight.w700
                        )
                    ),
                  ]
                ),
              ),

            ],
          ),
          SizedBox( height: 10.0,),
          Row(
            children: <Widget>[
              Text(product.name.replaceAll("\n", " ") + "\t\t\t\t",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17.0
                ),
              ),
              Image.asset("assets/images/stadia_logo.png", height: 20.0,)
            ],
          ),
          SizedBox( height: 10.0,),
          Text(product.info,
            style: TextStyle(
              color: Color(0xFF909090),
                fontWeight: FontWeight.w300,
                fontSize: 14.0
            ),
          ),
          SizedBox( height: 20.0,),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconTitleWidget(imagePath: "assets/icons/create.png", title: "Create"),
                IconTitleWidget(imagePath: "assets/icons/connect.png", title: "Connect"),
                IconTitleWidget(imagePath: "assets/icons/discover.png", title: "Discover")
              ],
            ),
          ),
          Divider(
            color: Color(0xFFECECEC),
            thickness: 1.0,
            height: 32.0,
          ),
          Row(
            children: <Widget>[
              RedButton(buttonText: "Pre-Order",),
              Spacer(),
              Material(
                elevation: 4,
                color: Colors.white,
                shape: CircleBorder(),
                child: Icon(Icons.add, size: 35.0, color: Color(0xFF0000FF),),
              ),
            ],
          )
        ],
      ),
    );
  }


}
