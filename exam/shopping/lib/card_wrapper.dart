import 'package:flutter/material.dart';
import 'card.dart';
import 'date.dart';

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<Map<String, dynamic>> allProducts = [];
  List<Map<String, dynamic>> displayedProducts = [];
  String? selectedCategory;
  String? selectedPriceRange;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    allProducts = products;
    displayedProducts = allProducts;
    searchController.addListener(_runFilter);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _runFilter() {
    String query = searchController.text;
    setState(() {
      displayedProducts = allProducts.where((product) {
        final matchesQuery =
            product['name'].toLowerCase().contains(query.toLowerCase());
        final matchesCategory =
            selectedCategory == null || product['category'] == selectedCategory;
        final matchesPrice = selectedPriceRange == null ||
            (selectedPriceRange == "Cheap" && product['price'] <= 1000) ||
            (selectedPriceRange == "Medium" &&
                product['price'] > 1000 &&
                product['price'] <= 2000) ||
            (selectedPriceRange == "Expensive" && product['price'] > 2000);
        return matchesQuery && matchesCategory && matchesPrice;
      }).toList();
    });
  }

  Widget _buildCategoryDropdown() {
    var categories =
        allProducts.map((product) => product['category']).toSet().toList();
    categories.sort();

    return DropdownButton<String?>(
      value: selectedCategory,
      hint: Text(
        "Select Category",
        style: TextStyle(color: Colors.white),
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedCategory = newValue;
          _runFilter();
        });
      },
      items: [
            DropdownMenuItem<String?>(
                value: null,
                child: Text("All", style: TextStyle(color: Colors.white)))
          ] +
          categories
              .map((value) => DropdownMenuItem<String?>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.white)),
                  ))
              .toList(),
      dropdownColor: Color(0xFF132123), // Dropdown rangi
      isExpanded: true,
      style: TextStyle(color: Colors.white),
      iconEnabledColor: Colors.white,
    );
  }

  Widget _buildPriceDropdown() {
    List<String> prices = ["Cheap", "Medium", "Expensive"];
    return Container(
      alignment: Alignment.centerRight,
      child: DropdownButton<String?>(
        value: selectedPriceRange,
        onChanged: (String? newValue) {
          setState(() {
            selectedPriceRange = newValue;
            _runFilter();
          });
        },
        underline: Container(),
        items: prices
            .map((value) => DropdownMenuItem<String?>(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
        isExpanded: false,
        icon: Icon(Icons.more_vert),
        selectedItemBuilder: (BuildContext context) {
          return prices.map<Widget>((String value) {
            return Align(
              alignment: Alignment.centerRight,
              child: Text(value, overflow: TextOverflow.ellipsis),
            );
          }).toList();
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final spacing = screenWidth * 0.01;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width *
                    0.4, // Ekranning 50% kengligi
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: _buildCategoryDropdown(),
              ),
              SizedBox(width: 10),
              Expanded(
                child: _buildPriceDropdown(),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (screenWidth / 2) / (screenHeight / 2.2),
            children: displayedProducts
                .map((product) => ProductCard(
                      name: product['name'],
                      price: product['price'],
                      imageUrl: product['imageUrl'],
                    ))
                .toList(),
            padding: EdgeInsets.all(spacing),
            mainAxisSpacing: spacing,
            crossAxisSpacing: spacing,
          ),
        ),
      ],
    );
  }
}
