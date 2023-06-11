import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    const spacingList = [
      _SpacingItem(spacing: AppSpacing.s, name: 's'),
      _SpacingItem(spacing: AppSpacing.m, name: 'm'),
      _SpacingItem(spacing: AppSpacing.l, name: 'l'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacings')),
      body: ListView(shrinkWrap: true, children: spacingList),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  const _SpacingItem({required this.spacing, required this.name});

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: appColors.colorPrimary,
                width: AppSpacing.s,
                height: AppSpacing.m,
              ),
              Container(
                width: spacing,
                height: AppSpacing.m,
                color: appColors.colorPrimary,
              ),
              Container(
                color: appColors.colorPrimary,
                width: AppSpacing.l,
                height: AppSpacing.m,
              ),
            ],
          ),
          const SizedBox(width: AppSpacing.s),
          Text(name),
        ],
      ),
    );
  }
}
