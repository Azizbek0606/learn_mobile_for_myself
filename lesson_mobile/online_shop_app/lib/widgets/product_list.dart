import 'package:flutter/material.dart';
import '../models/product.dart';
import '../sevices/api_services.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> products = [];
  int currentPage = 1;
  bool isFetching = false;
  final ApiService apiService = ApiService();
  late ScrollController _scrollController; // Marked as late
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadMore());
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !isFetching) {
      _loadMore();
    }
  }

  void _loadMore() {
    if (isFetching) return;
    setState(() {
      isFetching = true;
    });
    apiService.fetchProducts(currentPage++).then((newProducts) {
      setState(() {
        products.addAll(newProducts);
        isFetching = false;
      });
    }).catchError((error) {
      setState(() {
        isFetching = false;
      });
      // Handle errors
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.title),
          subtitle: Text(product.description),
          leading: Image.network(product.imageUrl),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
