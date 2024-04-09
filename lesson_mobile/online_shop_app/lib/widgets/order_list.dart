import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderList extends StatelessWidget {
  final List<Order> orders = Order.getMockOrders();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return ListTile(
          title: Text('Buyurtma ${order.id}'),
          subtitle: Text('Jami: \$${order.total}'),
          // Ko'proq ma'lumot qo'shing
        );
      },
    );
  }
}
