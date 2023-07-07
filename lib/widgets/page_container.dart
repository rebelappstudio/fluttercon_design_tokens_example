import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final customTextStyles = AppTypography.fromContext(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: AppSpacing.normal,
            right: AppSpacing.normal,
            bottom: AppSpacing.small,
          ),
          child: Row(
            children: [
              Text(
                title,
                style: customTextStyles.heading2,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: children,
          ),
        )
      ],
    );
  }
}
