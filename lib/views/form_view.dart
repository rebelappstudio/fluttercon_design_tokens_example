import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttercon_design_tokens_example/widgets/widgets.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: 'Form example',
      children: [
        SizedBox(
          height: AppSpacing.large,
        ),
        Text(
          'Form',
          style: AppTypography.fromContext(context).heading2,
        )
      ],
    );
  }
}
