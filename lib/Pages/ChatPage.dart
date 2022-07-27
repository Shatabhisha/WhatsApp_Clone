import 'package:chatapp/CustomUI/CustomCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Aliva",
      isGroup: false,
      currentMessage: "Hi EveryOne",
      time: "5:00",
      icon: "person.svg", status: '', 
    ),
    ChatModel(
      name: "Team members",
      isGroup: true,
      currentMessage: "Hii Members",
      time: "5:00",
      icon: "group.svg", status: '',
    ),
    ChatModel(
      name: "Ritul",
      isGroup: false,
      currentMessage: "Hi Ritul",
      time: "5:00",
      icon: "person.svg", status: '',
    ),
    ChatModel(
      name: "CGU Friends",
      isGroup: true,
      currentMessage: "Hi Friends",
      time: "5:00",
      icon: "group.svg", status: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (Builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
