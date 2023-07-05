import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension AppTester on WidgetTester {
  Future<void> pumpApp(
    Widget widgetUnderTest, {
    ThemeData? theme,
    ThemeData? darkTheme,
  }) async {
    await pumpWidget(
      MaterialApp(
          theme: theme ??
              const AppTheme().themeData.copyWith(
                extensions: <ThemeExtension<dynamic>>[
                  AppColors.light,
                  AppTypography.light,
                ],
              ),
          darkTheme: darkTheme ??
              const AppDarkTheme().themeData.copyWith(
                extensions: <ThemeExtension<dynamic>>[
                  AppColors.dark,
                  AppTypography.dark,
                ],
              ),
          home: Scaffold(
            body: widgetUnderTest,
          )),
    );
    await pump();
  }
}
