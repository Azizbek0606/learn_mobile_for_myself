import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name; // Mahsulot nomi
  final double price; // Mahsulot narxi
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
          double cardWidth = constraints.maxWidth;

          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            color: Color(0xFF132113),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.5, // Bu yerda rasmlar nisbati 3:2
                  child: Container(
                    width: cardWidth,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child; // Rasm muammosiz yuklangan bo'lsa
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null ?
                              loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! :
                              null,
                            ),
                          );
                        },
                        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                          return Center(
                            child: Icon(Icons.error, color: Colors.red), // Rasm yuklanishida xato bo'lsa
                          );
                        },
                      ),
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
                            flex: 7,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Add to Cart'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF132123),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.favorite, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF132123),
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
