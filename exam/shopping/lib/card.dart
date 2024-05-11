import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name; // Mahsulot nomi
  final int price; // Mahsulot narxi
  final String imageUrl; // Mahsulot rasmi URL manzili

  ProductCard({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double cardHeight =
              constraints.maxHeight * 0.60; // Cardning 45% balandligi
          double cardWidth = constraints.maxWidth; // Cardning to'liq kengligi

          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity, // Container to'liq en
                  height: cardHeight, // 45% Card balandligi
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey[400]!, width: 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20.0,
                              );
                            }),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '\$${price}',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.white70),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 7, // 70% kenglik
                            child: ElevatedButton(
                              onPressed: () {}, // Savatga qo'shish amali
                              child: Text('Add to Cart'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[800], // Tugma fon rangi
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  10), // Orasiga 10 piksel bo'sh joy qo'shildi
                          Expanded(
                            flex: 3, // 30% kenglik
                            child: ElevatedButton(
                              onPressed:
                                  () {}, // Istaklar ro'yxatiga qo'shish amali
                              child: Icon(Icons.favorite,
                                  color: Colors.white), // Yurakcha ikonka
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[800], // Tugma fon rangi
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
