import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttercon_design_tokens_example/data/data.dart';
import 'package:fluttercon_design_tokens_example/widgets/widgets.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  void _onItemSelected() {}

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
                'Recent messages',
                style: customTextStyles.heading2,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: chatItems
                .map((e) => ChatListItem(chatItem: e, onTap: _onItemSelected))
                .toList(),
          ),
        ),
      ],
    );
  }
}
