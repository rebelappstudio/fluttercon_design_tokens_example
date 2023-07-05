import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('light theme', () {
    group('colors', () {
      test('primary is seeded AppColors.light.colorPrimary', () {
        expect(
          const AppTheme().themeData.colorScheme.primary,
          ColorScheme.fromSeed(seedColor: AppColors.light.colorPrimary).primary,
        );
      });
    });

    group('colors', () {
      test('primary is seeded AppColors.light.colorPrimary', () {
        expect(
          const AppTheme().themeData.colorScheme.primary,
          ColorScheme.fromSeed(seedColor: AppColors.light.colorPrimary).primary,
        );
      });
    });
  });

  group('dark theme', () {
    group('colors', () {
      test('primary is seeded AppColors.dark.colorPrimary', () {
        expect(
          const AppDarkTheme().themeData.colorScheme.primary,
          ColorScheme.fromSeed(seedColor: AppColors.dark.colorPrimary).primary,
        );
      });
    });
  });
}
