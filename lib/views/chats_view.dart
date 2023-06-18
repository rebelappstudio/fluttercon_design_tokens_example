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
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: SearchBar(
            leading: Icon(Icons.menu),
            trailing: [
              Icon(Icons.search),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.m,
            right: AppSpacing.m,
            bottom: AppSpacing.s,
          ),
          child: Row(
            children: [
              Text(
                'Recent messages',
                style: Theme.of(context).textTheme.headlineSmall,
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
