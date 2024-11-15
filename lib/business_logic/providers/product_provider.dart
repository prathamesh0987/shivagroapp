import 'package:flutter/material.dart';
import 'package:shivagroapp/data/models/product.dart';
import 'package:shivagroapp/data/repositories/product_repository.dart';

class ProductProvider with ChangeNotifier {
  final ProductRepository _repository;
  List<Product> _products = [];
  bool _isLoading = false;

  ProductProvider(this._repository);

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    _products = await _repository.fetchProducts();
    _isLoading = false;
    notifyListeners();
  }
}
