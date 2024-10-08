import 'package:clean_app/features/products/data/data_sources/remote/product_api_service.dart';
import 'package:clean_app/features/products/data/repository/mock_product_repository.dart';
import 'package:clean_app/features/products/domain/repository/product_repository.dart';
import 'package:clean_app/features/products/domain/usecases/get_product.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> initializaDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<ProductApiService>(ProductApiService(sl()));
  sl.registerSingleton<ProductRepository>(MockProductRepository());
  sl.registerSingleton<GetProductsUseCase>(GetProductsUseCase(sl()));
  sl.registerFactory<RemoteProductBloc>(() => RemoteProductBloc(sl()));
}
