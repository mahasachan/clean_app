import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/products/data/models/product.dart';
import 'package:clean_app/features/products/domain/entities/product.dart';
import 'package:clean_app/features/products/domain/repository/product_repository.dart';

class MockProductRepository implements ProductRepository {
  @override
  Future<DataState<List<ProductEntity>>> getProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    List<ProductModel> products = generateProducts(50);
    return DataSuccess(products);
  }

  List<ProductModel> generateProducts(int num) {
    return List.generate(num, (i) {
      return ProductModel(
        id: '$i',
        productName: 'Product $i',
        price: 100.0 * i,
        description: 'Description of product $i',
      );
    });
  }
}
