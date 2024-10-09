import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/features/theme/data/models/theme_app.dart';
import 'package:clean_app/features/theme/domain/entities/theme_app.dart';
import 'package:clean_app/features/theme/domain/repository/theme_app_repository.dart';

class MockThemeAppRepository implements ThemeAppRepository {
  @override
  Future<DataState<ThemeAppEntity>> getTheme() async {
    await Future.delayed(const Duration(seconds: 1));
    ThemeAppModel themeAppData = const ThemeAppModel(
      primaryColor: 0xFFF16D22,
      secondaryColor: 0xFF028DCE,
      tertiaryColor: 0xFF256A00,
      inversePrimaryColor: 0xFF8F4196,
      errorColor: 0xFFC60000,
      backgroundColor: 0xFFFFFFFF,
      primaryContainerColor: 0xFFFCE2D3,
      secondaryContainerColor: 0xFFE6F4FB,
      tertiaryContainerColor: 0xFF3AA302,
      errorContainerColor: 0xFFC60000,
      surfaceColor: 0xFFDEE1E6,
      inverseSurfaceColor: 0xFFD2D3D8,
      onPrimaryColor: 0xFFFFFFFF,
      onSecondaryColor: 0xFFFFFFFF,
      onBackgroundColor: 0xFF000000,
      onTertiaryColor: 0xFFFFFFFF,
      onSurfaceColor: 0xFF000000,
      onErrorColor: 0xFFFFFFFF,
      onPrimaryContainerColor: 0xFFF16D22,
      onSecondaryContainerColor: 0xFF000000,
      onTertiaryContainerColor: 0xFFFFFFFF,
      onErrorContainerColor: 0xFFFFFFFF,
    );
    return DataSuccess(themeAppData);
  }
}
