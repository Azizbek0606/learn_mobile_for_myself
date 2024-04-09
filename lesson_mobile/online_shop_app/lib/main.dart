import 'package:flutter/material.dart';
import 'widgets/product_list.dart';
import 'widgets/order_list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onlayn Do`kon',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Onlayn Do`kon'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Mahsulotlar'),
                Tab(text: 'Buyurtmalar'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProductList(),
              OrderList(),
            ],
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(MyApp());
}
