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
    return PageContainer(
      title: 'Recent messages',
      children: chatItems
          .map((e) => ChatListItem(chatItem: e, onTap: _onItemSelected))
          .toList(),
    );
  }
}
