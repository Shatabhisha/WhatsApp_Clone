class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  ChatModel(
      {required this.name,
      required this.currentMessage,
      required this.icon,
      required this.isGroup,
      required this.time,
      required this.status});
}
