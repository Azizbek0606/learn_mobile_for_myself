import 'package:flutter/material.dart';
import 'package:shopping/card_wrapper.dart';
import 'package:shopping/customer_nav.dart';
import 'date.dart';
class FullApplication extends StatefulWidget {
  const FullApplication({super.key});
  @override
  _FullApplicationState createState() => _FullApplicationState();
}

class _FullApplicationState extends State<FullApplication> {
  final TextEditingController searchController = TextEditingController();
  void _updateSearchText() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProductGrid(),
      ),
      bottomNavigationBar: MyCustomNavbars(user_data),
    );
  }
}
