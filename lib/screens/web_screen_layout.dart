import 'package:flutter/material.dart';
import 'package:testapp/widegets/contacts_list.dart';
import 'package:testapp/widgets/chat_list.dart';
import 'package:testapp/widgets/chat_message_input.dart';
import 'package:testapp/widgets/web_chat_appbar.dart';
import 'package:testapp/widgets/web_profile_bar.dart';
import 'package:testapp/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // width: MediaQuery.of(context).size.width * 0.75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const WebChatAppBar(),
                  const Expanded(child: ChatList()),
                  ChatMessageInput(),
                  // Chat App Bar
                  // Chat List
                  // Message Input Box
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
