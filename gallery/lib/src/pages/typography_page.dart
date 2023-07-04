import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TypographyPage());
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = [
      _TextItem(name: 'Heading', style: AppTypography.heading),
      _TextItem(name: 'Heading 2', style: AppTypography.heading2),
      _TextItem(name: 'Subtitle', style: AppTypography.subtitle),
      _TextItem(name: 'Body L', style: AppTypography.bodyL),
      _TextItem(name: 'Body M', style: AppTypography.bodyM),
      _TextItem(name: 'Body S', style: AppTypography.bodyS),
      _TextItem(name: 'Button L', style: AppTypography.buttonL),
      _TextItem(name: 'Button M', style: AppTypography.buttonM),
      _TextItem(name: 'Section', style: AppTypography.section),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Typography')),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 16),
          ...textStyles,
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _TextItem extends StatelessWidget {
  const _TextItem({required this.name, required this.style});

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.small,
        vertical: AppSpacing.normal,
      ),
      child: Text(name, style: style),
    );
  }
}
