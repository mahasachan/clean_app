import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/products/domain/usecases/get_product.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_event.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteProductBloc extends Bloc<RemoteProductEvent, RemoteProductState> {
  final GetProductsUseCase _getProductsUseCase;
  RemoteProductBloc(this._getProductsUseCase)
      : super(const RemoteProductsLoading()) {
    on<GetProducts>(onGetProducts);
  }

  void onGetProducts(
      GetProducts event, Emitter<RemoteProductState> emit) async {
    final dataState = await _getProductsUseCase.call();
    print('dataState: $dataState');
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteProductsDone(dataState.data!));
    } else {
      print('data ${dataState.data}');
      print('exception: ${dataState.exception}');
      emit(RemoteProductsError(dataState.exception!));
    }
  }
}
