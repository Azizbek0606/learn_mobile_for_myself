import 'package:flutter/material.dart';
import 'card_wrapper.dart'; // Import ProductGrid

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Products Display'),
        ),
        body: ProductGrid(), // ProductGrid widgetini ishlatamiz
      ),
    );
  }
}
