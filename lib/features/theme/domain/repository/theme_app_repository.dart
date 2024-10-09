import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/theme/domain/entities/theme_app.dart';

abstract class ThemeAppRepository {
  Future<DataState<ThemeAppEntity>> getTheme();
}
