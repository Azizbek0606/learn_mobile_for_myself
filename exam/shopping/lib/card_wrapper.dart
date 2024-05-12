import 'package:flutter/material.dart';
import 'card.dart';
import 'date.dart'; // Bu faylda generateProductData() funksiyasi bo'lishi kerak

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final spacing = screenWidth * 0.01;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (screenWidth / 2) / (screenHeight / 2.2),
      children: generateProductData().map((product) =>
          ProductCard(
            name: product['name'],
            price: product['price'],
            imageUrl: product['imageUrl'],
          )).toList(),
      padding: const EdgeInsets.all(1.0),
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
    );
  }
}