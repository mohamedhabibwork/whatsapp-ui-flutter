import 'package:flutter/material.dart';
import 'package:testapp/colors.dart';
import 'package:testapp/widgets/chat_list.dart';
import 'package:testapp/widgets/chat_message_input.dart';

class MobileChatScreen extends StatelessWidget {
  final Map<String, Object> user;

  const MobileChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          user['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          ChatMessageInput(),
        ],
      ),
    );
  }
}
