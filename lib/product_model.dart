import 'package:flutter/material.dart';

import 'const_stories.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "قصص الانبياءْ",
    image: "assets/mosqe.png",
    color: const Color(0xFF71b8ff),
    courses: 25,
  ),
  Product(
    id: 2,
    title: "قصص كرتون",
    image: "assets/images/programming.png",
    color: const Color(0xFFff6374),
    courses: 10,
  ),
  Product(
    id: 3,
    title: "قصص الصحابه",
    image: "assets/images/finance.png",
    color: const Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: "about us",
    image: "assets/images/ux.png",
    color: const Color(0xFF9ba0fc),
    courses: 18,
  ),
];


class StoryData {
  final String title;
  final String text;
  final int id;

  StoryData({
    required this.id,
    required this.title,
    required this.text,
  });
}


List<StoryData> stories = [
  StoryData(id: 1, title: "آدم عليه السلام ", text: adamStory ) ,
  StoryData(id: 2, title: "ادريس عليه السلام ", text: edrisStory ),
  StoryData(id: 3, title: "نوح عليه السلام ", text: noahStory ),
  StoryData(id: 4, title: "هود عليه السلام ", text: hoodStore),
  StoryData(id: 5, title: "صالح عليه السلام ", text: salehStory),
  StoryData(id: 6, title: "ابراهيم عليه السلام ", text: ibrahimStory),
  StoryData(id: 7, title: "لوط عليه السلام ", text: lootStory),
  StoryData(id: 8, title: "اسماعيل عليه السلام ", text: ismailStory),
  StoryData(id: 9, title: "اسحاق عليه السلام ", text: ishaqStory),
  StoryData(id: 10, title: "يعقوب عليه السلام ", text: yaQoobStory),
  StoryData(id: 11, title: "يوسف عليه السلام ", text: youssefStory),
  StoryData(id: 12, title: "شعيب عليه السلام ", text: shoaibStory),
  StoryData(id: 13, title: "أيوب عليه السلام ", text: aiobStory),
  StoryData(id: 14, title: "ذوالكفل عليه السلام ", text: zoElKiflStory),
  StoryData(id: 15, title: "موسى عليه السلام ", text: mousaStory ),
  StoryData(id: 16, title: "هارون عليه السلام ", text: haroonStory ),
  StoryData(id: 17, title: "داود عليه السلام ", text: dawoodStory),
  StoryData(id: 18, title: "سليمان عليه السلام ", text: solimanStory),
  StoryData(id: 19, title: "الياس عليه السلام ", text: eliasStory ),
  StoryData(id: 20, title: "اليسع عليه السلام ", text: eliasaaStory),
  StoryData(id: 21, title: "يونس عليه السلام ", text: yonosStory),
  StoryData(id: 22, title: "زكريا عليه السلام ", text: zakriaStory),
  StoryData(id: 23, title: "يحيى عليه السلام ", text: yahiaStory),
  StoryData(id: 24, title: "عيسى عليه السلام ", text: easaaStory),
  StoryData(id: 25, title: "محمد صلى الله عليه وسلم", text: mohammedStory),
];

