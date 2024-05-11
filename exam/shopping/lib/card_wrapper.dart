import 'package:flutter/material.dart';
import 'card.dart'; // Import ProductCard from card.dart

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MediaQuery yordamida ekran o'lchamlarini olamiz
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Ekran kengligining 5% ini hisoblash
    final spacing = screenWidth * 0.01;

    return GridView.count(
      crossAxisCount: 2, // Bir qatorda 2 ta element
      childAspectRatio:
          (screenWidth / 2) / (screenHeight / 2.2), // Yangi en va boy nisbati
      children: List.generate(
          10,
          (index) => ProductCard(
                name: 'Product ${index + 1}',
                price: 20 + index,
                imageUrl: 'https://via.placeholder.com/150',
              )),
      padding: const EdgeInsets.all(1.0), // Yaxlitlik uchun padding
      mainAxisSpacing: spacing, // Vertikal oraliqni o'rnatish
      crossAxisSpacing: spacing, // Gorizontal oraliqni o'rnatish
    );
  }
}
