import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular, isFrame, isGoggle, isLens;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.isFrame = false,
    this.isGoggle = false,
    this.isLens = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/Rectangle_frame_1.png",
      "assets/images/Rectangle_frame_2.png",
      "assets/images/Rectangle_frame_3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Rectangle Eyeglasses 136741",
    price: 2000,
    description:
        "Rectangle Eyeglasses 136741 is a stylish TR-100 frame suitable for wide range of lenses. Buy this high quality frame with complete confidence at best prices guaranteed & great customer experience.",
    rating: 4.8,
    isPopular: true,
    isFrame: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/American_eagle_1.png",
      "assets/images/American_eagle_2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "American Eagle Sunglasses",
    price: 1500,
    description:
        "American Eagle Sunglasses 6448 is a Metal frame with Plastic Shades. And This Sunglasses is NON-RX",
    rating: 4.1,
    isPopular: true,
    isGoggle: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Lens_1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "SOLOTICA SOLFLEX TOPAZIO",
    price: 2500,
    description:
        "Turn heads with the vibrant blue shade of Solotica Solflex Topazio that comes with a deep and contrasting limbal ring. ",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    isLens: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Pilot_goggles.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pilot Aviator Sunglasses 6479",
    price: 3000,
    description:
        "Pilot Sunglasses 6479 is a Metal frame with Plastic Shades. And This Sunglasses is NON-RX",
    rating: 4.1,
    isFavourite: true,
    isGoggle: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/Round_frame_1.png",
      "assets/images/Round_frame_2.png",
      "assets/images/Round_frame_3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Round Eyeglasses 120936-c",
    price: 3500,
    description:
        "Round Eyeglasses 120936-c by Eyeglasses.pk is a TR-100 frame suitable for wide range of lenses.This high quality frame is sold at discounted price at Eyeglasses.pk with price match guaranteed.",
    rating: 4.8,
    isFavourite: true,
    isFrame: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/Lens_2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "SOLOTICA HIDROCOR OCRE",
    price: 4000,
    description:
        "Solotica Hidrocor Ocre lenses have a stunning light brown color suitable for dark Asian eyes. These lenses offer maximum opacity and come without a limbal ring for a natural look. This bestselling Solotica Hidrocor shade complements every complexion due to the subtle, beautiful shade.",
    rating: 4.9,
    isFavourite: true,
    isLens: true,
  ),
];
