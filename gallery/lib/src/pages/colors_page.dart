import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const ColorsPage());
  }

  @override
  Widget build(BuildContext context) {
    final materialColors = Theme.of(context).colorScheme;
    final materialColorItems = [
      _ColorItem(
        name: 'Primary',
        color: materialColors.primary,
      ),
      _ColorItem(
        name: 'OnPrimary',
        color: materialColors.onPrimary,
      ),
      _ColorItem(
        name: 'PrimaryContainer',
        color: materialColors.primaryContainer,
      ),
      _ColorItem(
        name: 'OnPrimaryContainer',
        color: materialColors.onPrimaryContainer,
      ),
    ];

    final customColors = AppColors.fromContext(context);
    final customColorItems = [
      _ColorItem(
        name: 'Primary',
        color: customColors.colorPrimary,
      ),
      _ColorItem(
        name: 'TextError',
        color: customColors.buttonTextError,
      ),
      _ColorItem(
        name: 'TextFocus',
        color: customColors.buttonTextFocus,
      ),
      _ColorItem(
        name: 'TextSuccess',
        color: customColors.buttonTextSuccess,
      ),
      _ColorItem(
        name: 'TextOnButton',
        color: customColors.buttonTextOnButton,
      ),
      _ColorItem(
        name: 'TextOnWarning',
        color: customColors.buttonTextOnWarning,
      ),
      _ColorItem(
        name: 'TextOnButtonDeactive',
        color: customColors.buttonTextOnButtonDeactive,
      ),
      _ColorItem(
        name: 'BackgroundDefault',
        color: customColors.backgroundDefault,
      ),
      _ColorItem(
        name: 'BackgroundPrimary',
        color: customColors.backgroundPrimary,
      ),
      _ColorItem(
        name: 'BackgroundSecondary',
        color: customColors.backgroundSecondary,
      ),
      _ColorItem(
        name: 'BackgroundTertiary',
        color: customColors.backgroundTertiary,
      ),
      _ColorItem(
        name: 'ForegroundDimmed',
        color: customColors.foregroundDimmed,
      ),
      _ColorItem(
        name: 'ForegroundDefault',
        color: customColors.foregroundDefault,
      ),
      _ColorItem(
        name: 'ForegroundSecondary',
        color: customColors.foregroundSecondary,
      ),
      _ColorItem(
        name: 'ForegroundDeactive',
        color: customColors.foregroundDeactive,
      ),
      _ColorItem(
        name: 'ForegroundOnPrimary',
        color: customColors.foregroundOnPrimary,
      ),
    ];

    final colors = [
      _ColorGroup(
        title: 'Material colors',
        items: materialColorItems,
      ),
      _ColorGroup(
        title: 'Custom colors',
        items: customColorItems,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: colors,
      ),
    );
  }
}

class _ColorGroup extends StatelessWidget {
  const _ColorGroup({
    required this.title,
    required this.items,
  });

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: AppSpacing.normal),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: items,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem({required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.small,
        vertical: AppSpacing.normal,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(name, style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: AppSpacing.normal),
          _ColorTile(color: color),
        ],
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({required this.color});

  final Color color;

  TextStyle get textStyle {
    return TextStyle(
      color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
    );
  }

  String get hexCode {
    if (color.value.toRadixString(16).length <= 2) {
      return '--';
    } else {
      return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Stack(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                border: Border.all(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(hexCode, style: textStyle),
            ),
          ),
        ],
      ),
    );
  }
}
