import 'package:clean_app/features/theme/domain/entities/theme_app.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteThemeAppState extends Equatable {
  final ThemeAppEntity? themeAppData;
  final DioException? exception;

  const RemoteThemeAppState({this.themeAppData, this.exception});
  @override
  List<Object> get props => [themeAppData!, exception!];
}

class RemoteThemeAppLoading extends RemoteThemeAppState {
  const RemoteThemeAppLoading();
}

class RemoteThemeAppDone extends RemoteThemeAppState {
  const RemoteThemeAppDone(ThemeAppEntity themeAppData)
      : super(themeAppData: themeAppData);
}

class RemoteThemeAppError extends RemoteThemeAppState {
  const RemoteThemeAppError(DioException exception)
      : super(exception: exception);
}
