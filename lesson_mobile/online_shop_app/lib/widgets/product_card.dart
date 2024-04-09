import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(product.imageUrl),
          Text(product.title),
          Text('\$${product.price}'),
          // Ko'proq ma'lumot va stil qo'shing
        ],
      ),
    );
  }
}
