import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecommondedModel {
  final String image;
  final String name;
  final int price;

  RecommondedModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<RecommondedModel> recommndedImgList = [
  RecommondedModel(image: "images/image1.png", name: "Watch", price: 50),
  RecommondedModel(image: "images/image2.png", name: "Scooter", price: 700),
  RecommondedModel(image: "images/image3.png", name: "Echo Dot", price: 100),
  RecommondedModel(image: "images/image1.png", name: "Watch", price: 50),
  RecommondedModel(image: "images/image2.png", name: "Scooter", price: 700),
  RecommondedModel(image: "images/image3.png", name: "Echo Dot", price: 100),
];

List<RecommondedModel> singleProductImgList = [
  RecommondedModel(image: "images/image4.png", name: "Sofa", price: 80),
  RecommondedModel(image: "images/image5.png", name: "Chair", price: 30),
  RecommondedModel(image: "images/image6.png", name: "Table", price: 40),
  RecommondedModel(image: "images/image7.png", name: "Wall Shelf", price: 40),
];

class Images {
  static SvgPicture menu = SvgPicture.asset(
    "images/menu.svg",
  );
  static SvgPicture amazonlogo = SvgPicture.asset(
    "images/Amazon_logo.svg",
    height: 20,
  );
  static SvgPicture shop = SvgPicture.asset(
    "images/shop.svg",
    height: 20,
  );
  static SvgPicture search = SvgPicture.asset(
    "images/search-line.svg",
  );
  static SvgPicture microphone = SvgPicture.asset(
    "images/microphone.svg",
  );
  static SvgPicture arrowLeft = SvgPicture.asset(
    "images/arrow-left-line.svg",
  );
}

class AppColors {
  static const KpColor = Color(0xffFEBD69);
  static const KWhiteColor = Color(0xffFCFCFC);
  static const KWhite = Colors.white;
}
