import 'package:flutter/material.dart';

class ProductDetailTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 56.0,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back)
          ),
          /* Note the use of a spacer to even out the row */
          Spacer(),
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 20.0,),
          Image.asset("assets/icons/menu.png", color: Colors.white, height: 30.0,)
        ],
      ),
    );
  }
}
