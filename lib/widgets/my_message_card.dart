import 'package:flutter/material.dart';
import 'package:testapp/colors.dart';

class MyMessageCard extends StatelessWidget {
  final Map<String, Object> message;
  const MyMessageCard({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: messageColor,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 30, top: 5, bottom: 20),
                    child: Text(
                      message['text'].toString(),
                      style: const TextStyle(
                        // color: messageColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 10,
                    child: Row(
                      children: [
                        Text(
                          message['time'].toString(),
                          style: const TextStyle(
                              fontSize: 13, color: Colors.white60),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.done_all,
                          size: 20,
                          color: Colors.white60,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
