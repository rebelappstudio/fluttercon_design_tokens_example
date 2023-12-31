import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttercon_design_tokens_example/models/chat_item.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    required this.chatItem,
    required this.onTap,
    super.key,
  });

  final ChatItem chatItem;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final customColors = AppColors.fromContext(context);
    final customTextStyles = AppTypography.fromContext(context);

    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
          color: customColors.backgroundPrimary,
        ),
        child: Center(
          child: Text(
            chatItem.contactName[0],
            style: customTextStyles.bodyM,
          ),
        ),
      ),
      title: Text(
        chatItem.contactName,
      ),
      subtitle: Text(
        chatItem.lastMessage,
      ),
    );
  }
}
