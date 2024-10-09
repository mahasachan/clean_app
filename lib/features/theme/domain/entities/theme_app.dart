import 'package:equatable/equatable.dart';

class ThemeAppEntity extends Equatable {
  final int? primaryColor;
  final int? secondaryColor;
  final int? tertiaryColor;
  final int? inversePrimaryColor;
  final int? errorColor;

  final int? backgroundColor;
  final int? primaryContainerColor;
  final int? secondaryContainerColor;
  final int? tertiaryContainerColor;
  final int? errorContainerColor;
  final int? surfaceColor;
  final int? inverseSurfaceColor;
  final int? onPrimaryColor;
  final int? onSecondaryColor;
  final int? onBackgroundColor;
  final int? onTertiaryColor;
  final int? onSurfaceColor;
  final int? onErrorColor;

  final int? onPrimaryContainerColor;
  final int? onSecondaryContainerColor;
  final int? onTertiaryContainerColor;
  final int? onErrorContainerColor;

  const ThemeAppEntity({
    this.primaryColor,
    this.secondaryColor,
    this.tertiaryColor,
    this.inversePrimaryColor,
    this.errorColor,
    this.backgroundColor,
    this.primaryContainerColor,
    this.secondaryContainerColor,
    this.tertiaryContainerColor,
    this.errorContainerColor,
    this.surfaceColor,
    this.inverseSurfaceColor,
    this.onPrimaryColor,
    this.onSecondaryColor,
    this.onBackgroundColor,
    this.onTertiaryColor,
    this.onSurfaceColor,
    this.onErrorColor,
    this.onPrimaryContainerColor,
    this.onSecondaryContainerColor,
    this.onTertiaryContainerColor,
    this.onErrorContainerColor,
  });
  @override
  List<Object?> get props {
    return [
      primaryColor,
      secondaryColor,
      tertiaryColor,
      inversePrimaryColor,
      errorColor,
      backgroundColor,
      primaryContainerColor,
      secondaryContainerColor,
      tertiaryContainerColor,
      errorContainerColor,
      surfaceColor,
      inverseSurfaceColor,
      onPrimaryColor,
      onSecondaryColor,
      onBackgroundColor,
      onTertiaryColor,
      onSurfaceColor,
      onErrorColor,
      onPrimaryContainerColor,
      onSecondaryContainerColor,
      onTertiaryContainerColor,
      onErrorContainerColor,
    ];
  }
}
