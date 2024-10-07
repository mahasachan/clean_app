import 'package:clean_app/core/constants/constant.dart';
import 'package:clean_app/features/products/data/models/product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'product_api_service.g.dart';

@RestApi(baseUrl: productAPIBaseURL)
abstract class ProductApiService {
  factory ProductApiService(Dio dio) = _ProductApiService;

  @GET('/products')
  Future<HttpResponse<List<ProductModel>>> getProducts();
}
