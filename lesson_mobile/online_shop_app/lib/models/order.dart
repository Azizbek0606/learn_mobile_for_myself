import 'package:online_shop_app/models/product.dart';

class Order {
  final int id;
  final List<Product> products;
  final DateTime date;
  final double total;
  Order({required this.id, required this.products, required this.date, required this.total});
  static List<Order> getMockOrders() {
    return [
      Order(
        id: 1,
        products: Product.getMockProducts(
            0),
        date: DateTime.now(),
        total: 200.00,
      ),
    ];
  }
}
