import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/products/domain/entities/product.dart';

abstract class ProductRepository {
  Future<DataState<List<ProductEntity>>> getProducts();
}
