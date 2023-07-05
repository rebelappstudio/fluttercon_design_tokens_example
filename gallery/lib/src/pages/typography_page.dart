import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TypographyPage());
  }

  @override
  Widget build(BuildContext context) {
    final materialTextThemes = Theme.of(context).textTheme;

    final materialTextStyles = [
      _TextItem(
          name: 'Heading Large', style: materialTextThemes.headlineLarge!),
      _TextItem(name: 'Body Medium', style: materialTextThemes.bodyMedium!),
      _TextItem(name: 'Label Small', style: materialTextThemes.labelSmall!),
    ];

    final customTextStyles = AppTypography.fromContext(context);
    final textStyles = [
      _TextItem(name: 'Heading', style: customTextStyles.heading1),
      _TextItem(name: 'Heading 2', style: customTextStyles.heading2),
      _TextItem(name: 'Subtitle', style: customTextStyles.subtitle),
      _TextItem(name: 'Body L', style: customTextStyles.bodyL),
      _TextItem(name: 'Body M', style: customTextStyles.bodyM),
      _TextItem(name: 'Body S', style: customTextStyles.bodyS),
      _TextItem(name: 'Button L', style: customTextStyles.buttonL),
      _TextItem(name: 'Button M', style: customTextStyles.buttonM),
      _TextItem(name: 'Section', style: customTextStyles.section),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Typography')),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 16),
          Text(
            "Material",
            style: materialTextThemes.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ...materialTextStyles,
          const SizedBox(height: 32),
          Text(
            "Custom",
            style: customTextStyles.heading2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
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
