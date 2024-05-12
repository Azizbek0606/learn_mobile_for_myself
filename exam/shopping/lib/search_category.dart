import 'package:flutter/material.dart';
import 'card.dart';
import 'date.dart'; // Bu faylda generateProductData() funksiyasi bo'lishi kerak

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<DropdownMenuItem<String>> categoryItems;
  final List<DropdownMenuItem<String>> priceItems;
  final Function(String?) onCategorySelected;
  final Function(String?) onPriceSelected;
  final TextEditingController searchController = TextEditingController(); // Yangi text controller

  CustomAppBar({
    required this.title,
    required this.categoryItems,
    required this.priceItems,
    required this.onCategorySelected,
    required this.onPriceSelected,
    required Null Function(dynamic String) onSearch,
  }) {
    searchController.addListener(() {
      print("Qidiruv maydonidagi matn: ${searchController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.white)),
      backgroundColor: Color(0xFF132123),
      elevation: 0,
      leading: null,
      actions: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextField(
                    controller: searchController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Qidiruv...',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      suffixIcon: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: categoryItems,
                        onChanged: onCategorySelected,
                        value: categoryItems.first.value,
                        dropdownColor: Color(0xFF132123),
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: PopupMenuButton<String>(
                    onSelected: onPriceSelected,
                    itemBuilder: (BuildContext context) {
                      return priceItems.map((DropdownMenuItem<String> item) {
                        return PopupMenuItem<String>(
                          value: item.value,
                          child: Text(item.child.toString(), style: TextStyle(color: Colors.white)),
                        );
                      }).toList();
                    },
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    color: Color(0xFF132123),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
