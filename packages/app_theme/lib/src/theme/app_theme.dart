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
        AppTypography.light,
      );

  IconThemeData get _iconTheme => _commonIconTheme(AppColors.light);

  Typography get _typography =>
      Typography(white: _commonTextTheme(AppColors.light));

  ListTileThemeData get _listTileTheme => _commonListTileTheme(
        AppColors.light,
        AppTypography.light,
      );

  BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return _commonBottomNavigationBarTheme(
      AppColors.light,
      AppTypography.light,
    );
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
  AppBarTheme get _appBarTheme => _commonAppBarTheme(
        AppColors.dark,
        AppTypography.dark,
      );

  @override
  IconThemeData get _iconTheme => _commonIconTheme(AppColors.dark);

  @override
  Typography get _typography =>
      Typography(black: _commonTextTheme(AppColors.dark));

  @override
  ListTileThemeData get _listTileTheme => _commonListTileTheme(
        AppColors.dark,
        AppTypography.dark,
      );

  @override
  BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      _commonBottomNavigationBarTheme(
        AppColors.dark,
        AppTypography.dark,
      );
}

AppBarTheme _commonAppBarTheme(
  AppColors colors,
  AppTypography typography,
) {
  return AppBarTheme(
    iconTheme: _commonIconTheme(colors),
    titleTextStyle: typography.bodyL.apply(color: colors.foregroundDefault),
    backgroundColor: colors.backgroundDefault,
  );
}

IconThemeData _commonIconTheme(AppColors colors) {
  return IconThemeData(color: colors.foregroundDefault);
}

TextTheme _commonTextTheme(AppColors colors) {
  return const TextTheme().apply(
    bodyColor: colors.foregroundDefault,
    displayColor: colors.foregroundDefault,
    decorationColor: colors.foregroundDefault,
  );
}

ListTileThemeData _commonListTileTheme(
  AppColors colors,
  AppTypography typography,
) {
  return ListTileThemeData(
    iconColor: colors.foregroundDefault,
    titleTextStyle: typography.bodyL.apply(color: colors.foregroundDefault),
    subtitleTextStyle: typography.bodyS.apply(color: colors.foregroundDimmed),
  );
}

BottomNavigationBarThemeData _commonBottomNavigationBarTheme(
  AppColors colors,
  AppTypography typography,
) {
  return BottomNavigationBarThemeData(
    backgroundColor: colors.backgroundDefault,
    selectedItemColor: colors.backgroundPrimary,
    selectedLabelStyle:
        typography.section.apply(color: colors.foregroundOnPrimary),
    unselectedItemColor: colors.foregroundDeactive,
    unselectedLabelStyle:
        typography.section.apply(color: colors.foregroundDeactive),
  );
}
