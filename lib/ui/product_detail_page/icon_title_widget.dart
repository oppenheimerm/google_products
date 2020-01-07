import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {

  final String title, imagePath;

  const IconTitleWidget({Key key, this.title, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          Image.asset(
              imagePath,
            color: Color(0xFFDA1D21),
            height: 25.0,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFDA1D21),
              fontSize: 10.0,
              height: 2
            ),
          )
        ],
      ),
    );
  }
}
