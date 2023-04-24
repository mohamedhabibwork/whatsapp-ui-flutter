import 'package:flutter/material.dart';
import 'package:testapp/info.dart';
import 'package:testapp/widgets/my_message_card.dart';
import 'package:testapp/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var massage = messages[index] as Map<String, Object>;
        if (massage['isMe'].toString() == 'true') {
          return MyMessageCard(
            message: massage,
          );
        }
        return SenderMessageCard(
          message: massage,
        );
      },
      itemCount: messages.length,
    );
  }
}
