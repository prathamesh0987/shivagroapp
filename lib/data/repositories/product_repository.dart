import '../models/product.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    //mock api
    await Future.delayed(Duration(seconds: 1));
    return [
      Product(id: '1', name: 'Product A', price: 10.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
      Product(id: '2', name: 'Product B', price: 20.0),
    ];
  }
}
