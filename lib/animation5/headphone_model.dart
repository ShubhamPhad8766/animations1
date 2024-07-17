import 'package:flutter/material.dart';

class Product {
  final Color color;
  final String image;
  Product(
    this.color,
    this.image,
  );
}

List<Product> product = [
  Product(Colors.black, 'assets/2.png'),
  Product(const Color.fromARGB(255, 233, 218, 173), 'assets/3.png'),
  Product(const Color.fromARGB(255, 52, 117, 228), 'assets/4.png'),
];
