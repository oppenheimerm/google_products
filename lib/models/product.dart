import 'package:flutter/material.dart';

class Product{

  Product({
    this.name,
    this.description,
    this.backgroundColour,
    this.buttonText,
    this.imageUrl,
    this.price,
    this.info
});

  final String name;
  final String description;
  final Color backgroundColour;
  final String buttonText;
  final String imageUrl;
  final String price;
  final String info;
}

final Product pixelStand = Product(
  imageUrl: "assets/images/pixelstand.webp",
  name: "Pixel stand",
  description: "New Release",
  buttonText: "",
  backgroundColour: Color(0xFFF9F9F9),
);

final Product dayDreamView = Product(
  imageUrl: "assets/images/daydream.png",
  name: "DayDream View",
  description: "Premium",
  buttonText: "",
  backgroundColour: Color(0xFFE0DDFF),
);

final Product pixel = Product(
  imageUrl: "assets/images/pixel.png",
  name: "Pixel 3a",
  description: "Meet the Google Pixel 3a.",
  buttonText: "Learn more",
  backgroundColour: Color(0xFFF5F5F5),
);

final Product stadia = Product(
    imageUrl: "assets/images/stadia.png",
    name: "Google\nStadia",
    description: "New Release",
    buttonText: "CHECK OUT",
    backgroundColour: Color(0xFFFBE9EB),
    price: "69",
    info: "Stadia is Google's new cloud based "
        "gaming platform that allows you to play your favorite git video games across screens instantly.");