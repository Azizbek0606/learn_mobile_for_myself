 class Product {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] ?? 'No description provided',
      imageUrl: json['thumbnailUrl'] as String,
    );
  }
}
