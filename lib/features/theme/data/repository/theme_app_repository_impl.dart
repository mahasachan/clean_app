import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/theme/domain/entities/theme_app.dart';
import 'package:clean_app/features/theme/domain/repository/theme_app_repository.dart';

class ThemeAppRepositoryImpl implements ThemeAppRepository {
  @override
  Future<DataState<ThemeAppEntity>> getTheme() {
    throw UnimplementedError();
  }
}
