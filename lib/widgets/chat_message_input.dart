import 'package:flutter/material.dart';
import 'package:testapp/colors.dart';

class ChatMessageInput extends StatelessWidget {
  const ChatMessageInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      height: 75,
      child: Container(
        color: chatBarMessage,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: searchBarColor,
                    // border: InputBorder.none,
                    prefixIcon: const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(
                        Icons.send,
                        size: 30,
                      ),
                    ),
                    hintText: 'Type a Message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic_none_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
