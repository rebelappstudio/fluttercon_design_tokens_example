/// Chat list item with [contactName] and [lastMessage] fields
class ChatItem {
  ChatItem({
    required this.contactName,
    required this.lastMessage,
  });

  /// Name of the contact.
  final String contactName;

  /// Last message received from user.
  final String lastMessage;
}
