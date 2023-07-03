import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

/// {@template app_theme}
/// The Light[ThemeData].
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData`.
  ThemeData get themeData {
    return ThemeData(
      colorScheme: _colorScheme,
      textTheme: _textTheme,
      useMaterial3: true,
    );
  }

  /// Seeded color scheme
  ColorScheme get _colorScheme {
    return ColorScheme.fromSeed(seedColor: AppColors.light.colorPrimary);
  }

  TextTheme get _textTheme => _commonTextTheme(AppColors.light);
}

/// {@template app_dark_theme}
/// The Dark [ThemeData].
/// {@endtemplate}
class AppDarkTheme extends AppTheme {
  /// {@macro app_dark_theme}
  const AppDarkTheme();

  @override
  ColorScheme get _colorScheme {
    return ColorScheme.fromSeed(seedColor: AppColors.dark.colorPrimary);
  }

  @override
  TextTheme get _textTheme => _commonTextTheme(AppColors.dark);
}

TextTheme _commonTextTheme(AppColors colors) {
  return const TextTheme().apply(
    bodyColor: colors.foregroundDefault,
    displayColor: colors.foregroundDefault,
    decorationColor: colors.foregroundDefault,
  );
}
