import 'package:flutter/material.dart';
import 'package:shopping/search_category.dart';
import 'card_wrapper.dart';
import 'customer_nav.dart'; // Ensure this is correctly imported

class FullApplication extends StatefulWidget {
  const FullApplication({super.key});

  @override
  _FullApplicationState createState() => _FullApplicationState();
}

class _FullApplicationState extends State<FullApplication> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(_updateSearchText);
  }

  @override
  void dispose() {
    searchController.removeListener(_updateSearchText);
    searchController.dispose();
    super.dispose();
  }

  void _updateSearchText() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Mahsulotlar katalogi',
        categoryItems: [
          DropdownMenuItem<String>(value: 'Elektronika', child: Text('Elektronika')),
          DropdownMenuItem<String>(value: 'Kiyim', child: Text('Kiyim')),
        ],
        priceItems: [
          DropdownMenuItem<String>(value: 'Arzon', child: Text('Arzon')),
          DropdownMenuItem<String>(value: 'O\'rta', child: Text('O\'rta')),
          DropdownMenuItem<String>(value: 'Qimmat', child: Text('Qimmat')),
        ],
        onCategorySelected: (String? category) {},
        onPriceSelected: (String? price) {}, onSearch: (String) {  },
      ),
      body: Center(
        child: ProductGrid(),
      ),
      bottomNavigationBar: CustomerNavbar(),
    );
  }
}
