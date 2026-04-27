import '../models/product.dart';
import 'product_api.dart';

class ProductRepository {
  ProductRepository({ProductApi? api}) : _api = api ?? ProductApi();

  final ProductApi _api;

  Future<List<Product>> getProducts() {
    return _api.fetchProducts();
  }
}
