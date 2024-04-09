import 'package:flutter/material.dart';
import 'product_card.dart';
import '../models/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = Product.getMockProducts(0);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}
