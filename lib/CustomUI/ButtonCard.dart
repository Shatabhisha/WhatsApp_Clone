import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key, required this.name,required this.icon, required this.contact, }) : super(key: key);
  final ChatModel contact;
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          child: Icon(icon),
        ),
        title: Text(name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        
      ),
    );
  }
}
