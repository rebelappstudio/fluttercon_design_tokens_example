import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'This page is:',
          ),
          SizedBox(
            height: AppSpacing.large,
          ),
          Text(
            'Form',
            style: AppTypography.fromContext(context).heading2,
          ),
        ],
      ),
    );
  }
}
