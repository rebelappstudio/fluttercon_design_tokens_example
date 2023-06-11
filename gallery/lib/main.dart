import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:gallery/src/gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Gallery',
      theme: const AppTheme().themeData.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppColors.light,
        ],
      ),
      darkTheme: const AppDarkTheme().themeData.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppColors.dark,
        ],
      ),
      home: const RootPage(),
    );
  }
}
