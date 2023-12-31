import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    final spacingList = [
      _SpacingItem(spacing: AppSpacing.zero, name: 'zero'),
      _SpacingItem(spacing: AppSpacing.tiny, name: 'tiny'),
      _SpacingItem(spacing: AppSpacing.xSmall, name: 'xSmall'),
      _SpacingItem(spacing: AppSpacing.base, name: 'base'),
      _SpacingItem(spacing: AppSpacing.small, name: 'large'),
      _SpacingItem(spacing: AppSpacing.normal, name: 'normal'),
      _SpacingItem(spacing: AppSpacing.large, name: 'large'),
      _SpacingItem(spacing: AppSpacing.xLarge, name: 'xLarge'),
      _SpacingItem(spacing: AppSpacing.huge, name: 'huge'),
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
    final appColors = AppColors.fromContext(context);
    return Padding(
      padding: EdgeInsets.all(AppSpacing.small),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: appColors.buttonTextFocus,
                width: AppSpacing.tiny,
                height: AppSpacing.normal,
              ),
              Container(
                width: spacing,
                height: AppSpacing.normal,
                color: appColors.colorPrimary,
              ),
              Container(
                color: appColors.buttonTextFocus,
                width: AppSpacing.tiny,
                height: AppSpacing.normal,
              ),
            ],
          ),
          SizedBox(width: AppSpacing.small),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
