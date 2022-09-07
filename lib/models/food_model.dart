import 'package:flutter/material.dart';
import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/app_assets.dart';

class Product {
  final int id, price;
  final String title, description, image;
  final double rating;

  Product({
    required this.id,
    required this.image,
    this.rating = 0.0,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our food Products

List<Product> foodProducts = [
  Product(
    id: 1,
    image: AppAssets.burgerImg,
    title: "Burger",
    price: 64,
    description: description,
    rating: 4.8,
  ),
  Product(
    id: 2,
    image: AppAssets.burgerImg,
    title: "Chicken",
    price: 50,
    description: description,
    rating: 4.1,
  ),
  Product(
    id: 3,
    image: AppAssets.burgerImg,
    title: "Sea Food",
    price: 19,
    description: description,
    rating: 4.0,
  ),
  Product(
    id: 4,
    image: AppAssets.burgerImg,
    title: "Fish",
    price: 36,
    description: description,
    rating: 4.1,
  ),
  Product(
    id: 5,
    image: AppAssets.burgerImg,
    title: "Soup",
    price: 15,
    description: description,
    rating: 4.2,
  ),
  Product(
    id: 6,
    image: AppAssets.burgerImg,
    title: "Light Food",
    price: 20,
    description: description,
    rating: 4.5,
  ),
];

const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy";
