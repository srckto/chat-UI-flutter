import 'package:chat_ui/models/user_model.dart';
import 'package:chat_ui/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final User userSender;
  MessageScreen({required this.userSender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(userSender.name),
        centerTitle: true,
        elevation: 0.0,
        titleTextStyle: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 22),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: MessageWidget(userSend: userSender),
      ),
    );
  }
}
