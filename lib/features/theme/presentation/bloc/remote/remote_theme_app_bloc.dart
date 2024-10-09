import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/theme/domain/usecases/get_theme_app.dart';
import 'package:clean_app/features/theme/presentation/bloc/remote/remote_theme_app_event.dart';
import 'package:clean_app/features/theme/presentation/bloc/remote/remote_theme_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteThemeAppBloc
    extends Bloc<RemoteThemeAppEvent, RemoteThemeAppState> {
  final GetThemeAppUseCase _getThemeAppUseCase;
  RemoteThemeAppBloc(this._getThemeAppUseCase)
      : super(const RemoteThemeAppLoading()) {
    on<GetThemeApp>(onGetThemeApp);
  }
  void onGetThemeApp(
      GetThemeApp event, Emitter<RemoteThemeAppState> emit) async {
    final dataState = await _getThemeAppUseCase.call();
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteThemeAppDone(dataState.data!));
    } else {
      emit(RemoteThemeAppError(dataState.exception!));
    }
  }
}
