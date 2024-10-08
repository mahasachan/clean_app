import 'package:clean_app/features/products/domain/entities/product.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteProductState extends Equatable {
  final List<ProductEntity>? products;
  final DioException? exception;

  const RemoteProductState({this.products, this.exception});
  @override
  List<Object> get props => [products!, exception!];
}

class RemoteProductsLoading extends RemoteProductState {
  const RemoteProductsLoading();
}

class RemoteProductsDone extends RemoteProductState {
  const RemoteProductsDone(List<ProductEntity> products)
      : super(products: products);
}

class RemoteProductsError extends RemoteProductState {
  const RemoteProductsError(DioException exception)
      : super(exception: exception);
}
