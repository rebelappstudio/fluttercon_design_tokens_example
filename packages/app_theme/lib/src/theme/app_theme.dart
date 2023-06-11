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
      useMaterial3: true,
    );
  }

  /// Primary color scheme
  ColorScheme get _colorScheme {
    return ColorScheme.fromSeed(seedColor: AppColors.light.colorPrimary);
  }
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
}