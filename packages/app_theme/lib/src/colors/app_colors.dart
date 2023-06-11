import 'package:app_theme/src/tokens/tokens.dart';
import 'package:app_theme/src/tokens/tokens_dark.dart';
import 'package:flutter/material.dart';

/// App colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  /// App colors default constructor
  const AppColors({
    required this.colorPrimary,
  });

  /// Background base
  final Color colorPrimary;

  @override
  AppColors copyWith({
    Color? colorPrimary,
  }) {
    return AppColors(
      colorPrimary: colorPrimary ?? this.colorPrimary,
    );
  }

  // Controls how the properties change on theme changes
  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      colorPrimary:
          Color.lerp(colorPrimary, other.colorPrimary, t) ?? colorPrimary,
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'AppColors('
      'colorBackgroundBase: $colorPrimary, '
      ')';

  /// The light theme
  static const light = AppColors(
    colorPrimary: DesignTokens.colorPrimary,
  );

  /// The dark theme
  static const dark = AppColors(
    colorPrimary: DesignTokensDark.colorPrimary,
  );
}
