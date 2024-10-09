import 'package:clean_app/features/theme/domain/entities/theme_app.dart';

class ThemeAppModel extends ThemeAppEntity {
  const ThemeAppModel({
    super.primaryColor,
    super.secondaryColor,
    super.tertiaryColor,
    super.inversePrimaryColor,
    super.errorColor,
    super.backgroundColor,
    super.primaryContainerColor,
    super.secondaryContainerColor,
    super.tertiaryContainerColor,
    super.errorContainerColor,
    super.surfaceColor,
    super.inverseSurfaceColor,
    super.onPrimaryColor,
    super.onSecondaryColor,
    super.onBackgroundColor,
    super.onTertiaryColor,
    super.onSurfaceColor,
    super.onErrorColor,
    super.onPrimaryContainerColor,
    super.onSecondaryContainerColor,
    super.onTertiaryContainerColor,
    super.onErrorContainerColor,
  });

  factory ThemeAppModel.fromJson(Map<String, int> map) {
    return ThemeAppModel(
      primaryColor: map['primaryColor'] ?? 0xFFF16D22,
      secondaryColor: map['secondaryColor'] ?? 0xFF028DCE,
      tertiaryColor: map['tertiaryColor'] ?? 0xFF256A00,
      inversePrimaryColor: map['inversePrimaryColor'] ?? 0xFF8F4196,
      errorColor: map['errorColor'] ?? 0xFFC60000,
      backgroundColor: map['backgroundColor'] ?? 0xFFFFFFFF,
      primaryContainerColor: map['primaryContainerColor'] ?? 0xFFFCE2D3,
      secondaryContainerColor: map['secondaryContainerColor'] ?? 0xFFE6F4FB,
      tertiaryContainerColor: map['tertiaryContainerColor'] ?? 0xFF3AA302,
      errorContainerColor: map['errorContainerColor'] ?? 0xFFC60000,
      surfaceColor: map['surfaceColor'] ?? 0xFFDEE1E6,
      inverseSurfaceColor: map['inverseSurfaceColor'] ?? 0xFFD2D3D8,
      onPrimaryColor: map['onPrimaryColor'] ?? 0xFFFFFFFF,
      onSecondaryColor: map['onSecondaryColor'] ?? 0xFFFFFFFF,
      onBackgroundColor: map['onBackgroundColor'] ?? 0xFF000000,
      onTertiaryColor: map['onTertiaryColor'] ?? 0xFFFFFFFF,
      onSurfaceColor: map['onSurfaceColor'] ?? 0xFF000000,
      onErrorColor: map['onErrorColor'] ?? 0xFFFFFFFF,
    );
  }
}
