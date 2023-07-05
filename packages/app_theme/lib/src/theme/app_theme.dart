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
      appBarTheme: _appBarTheme,
      iconTheme: _iconTheme,
      scaffoldBackgroundColor: _backgroundColor,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      listTileTheme: _listTileTheme,
      typography: _typography,
      useMaterial3: true,
    );
  }

  Color? get _backgroundColor => AppColors.light.backgroundDefault;

  ColorScheme get _colorScheme {
    return ColorScheme.fromSeed(seedColor: AppColors.light.colorPrimary);
  }

  AppBarTheme get _appBarTheme => _commonAppBarTheme(
        AppColors.light,
      );

  IconThemeData get _iconTheme => _commonIconTheme(AppColors.light);

  Typography get _typography =>
      Typography(white: _commonTextTheme(AppColors.light));

  ListTileThemeData get _listTileTheme => _commonListTileTheme(AppColors.light);

  BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return _commonBottomNavigationBarTheme(AppColors.light);
  }
}

/// {@template app_dark_theme}
/// The Dark [ThemeData].
/// {@endtemplate}
class AppDarkTheme extends AppTheme {
  /// {@macro app_dark_theme}
  const AppDarkTheme();

  @override
  Color? get _backgroundColor => AppColors.dark.backgroundDefault;

  @override
  ColorScheme get _colorScheme {
    return ColorScheme.fromSeed(seedColor: AppColors.dark.colorPrimary);
  }

  @override
  AppBarTheme get _appBarTheme => _commonAppBarTheme(AppColors.dark);

  @override
  IconThemeData get _iconTheme => _commonIconTheme(AppColors.dark);

  @override
  Typography get _typography =>
      Typography(black: _commonTextTheme(AppColors.dark));

  @override
  ListTileThemeData get _listTileTheme => _commonListTileTheme(AppColors.dark);

  @override
  BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      _commonBottomNavigationBarTheme(AppColors.dark);
}

AppBarTheme _commonAppBarTheme(
  AppColors colors,
) {
  return AppBarTheme(
    iconTheme: _commonIconTheme(colors),
    titleTextStyle: TextStyle(color: colors.foregroundDefault),
    backgroundColor: colors.backgroundDefault,
  );
}

IconThemeData _commonIconTheme(AppColors colors) {
  return IconThemeData(color: colors.foregroundDefault);
}

TextTheme _commonTextTheme(AppColors colors) {
  return const TextTheme().apply(
    bodyColor: colors.buttonTextSuccess,
    displayColor: colors.buttonTextSuccess,
    decorationColor: colors.buttonTextSuccess,
  );
}

ListTileThemeData _commonListTileTheme(AppColors colors) {
  return ListTileThemeData(
    iconColor: colors.foregroundDefault,
    textColor: colors.foregroundDefault,
  );
}

BottomNavigationBarThemeData _commonBottomNavigationBarTheme(AppColors colors) {
  return BottomNavigationBarThemeData(
    backgroundColor: colors.backgroundDefault,
    selectedItemColor: colors.backgroundPrimary,
    selectedLabelStyle: TextStyle(color: colors.foregroundOnPrimary),
    unselectedItemColor: colors.foregroundDeactive,
    unselectedLabelStyle: TextStyle(color: colors.foregroundDeactive),
  );
}
