import 'dart:io';

import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/products/data/data_sources/remote/product_api_service.dart';
import 'package:clean_app/features/products/domain/entities/product.dart';
import 'package:clean_app/features/products/domain/repository/product_repository.dart';
import 'package:dio/dio.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductApiService _productApiService;
  ProductRepositoryImpl(this._productApiService);

  @override
  Future<DataState<List<ProductEntity>>> getProducts() async {
    try {
      final httpResponse = await _productApiService.getProducts();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
