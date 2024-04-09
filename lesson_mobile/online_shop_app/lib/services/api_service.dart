import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Product>> fetchProducts(int page) async {
    final response = await http.get(Uri.parse('$baseUrl?_page=$page&_limit=10'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
