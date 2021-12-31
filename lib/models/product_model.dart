import 'package:flutter/material.dart';

import 'anbiaa_stories_model.dart';
import 'cartoon_stories_model.dart';
import 'elsahaba_stories_model.dart';
class Product {
  final String image, title;
  final int id ;
  final int?  courses;
  final Color color;

  Product({
    required this.image,
    required this.title,
    this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "قصص الانبياءْ",
    image: "assets/image1.png",
    color: const Color(0xff4a8be3),
    courses: anbiaastories.length,
  ),
  Product(
    id: 2,
    title: "قصص الصحابه",
    image: "assets/image3.png",
    color: const Color(0xffff6374),
    courses: elshabaStories.length,
  ),
  Product(
    id: 3,
    title: "قصص الاطفال",
    image: "assets/image2.png",
    color: const Color(0xFFffaa5b),
    courses: cartoonStories.length,
  ),

  Product(
    id: 4,
    title: "about us",
    image: "assets/image4.png",
    color: const Color(0xFF9ba0fc),
    courses: 0,
  ),

];

