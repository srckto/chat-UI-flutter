import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';

import 'package:chat_ui/models/user_model.dart';

class MessageWidget extends StatefulWidget {
  final User userSend;
  MessageWidget({required this.userSend});

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        bool _isMe = (messages[index].sender.id == currentUser.id);
        return Row(
          mainAxisAlignment: _isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!_isMe) UserWidget(imageUrl: widget.userSend.imageUrl, size: 20),
            Container(
              alignment: _isMe ? Alignment.centerRight : Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              width: _size.width * 0.67,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 1,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  messages[index].text,
                  style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            if (!_isMe)
              IconButton(
                onPressed: () {
                  setState(() {
                    messages[index].isLiked = !messages[index].isLiked;
                  });
                },
                icon: Icon(
                  messages[index].isLiked ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            if (_isMe) UserWidget(imageUrl: currentUser.imageUrl, size: 20),
          ],
        );
      },
    );
  }
}
