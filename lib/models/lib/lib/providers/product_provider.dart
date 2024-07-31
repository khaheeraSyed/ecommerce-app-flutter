import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  int _limit = 10;
  int _skip = 0;

  List<Product> get products => _products;
  List<Product> get filteredProducts => _filteredProducts;

  Future<void> fetchProducts() async {
    ApiService apiService = ApiService();
    List<Product> newProducts = await apiService.fetchProducts(_limit, _skip);
    _products.addAll(newProducts);
    _filteredProducts = _products; // Initialize filtered products
    _skip += _limit;
    notifyListeners();
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      _filteredProducts = _products;
    } else {
      _filteredProducts = _products.where((product) => product.title.toLowerCase().contains(query.toLowerCase())).toList();
    }
    notifyListeners();
  }
}
