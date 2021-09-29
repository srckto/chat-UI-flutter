import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screens/message_screen.dart';
import 'package:chat_ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class AllChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => MessageScreen(userSender: chats[index].sender))),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: UserWidget(imageUrl: chats[index].sender.imageUrl, size: 29),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chats[index].sender.name,
                              style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 17),
                            ),
                            SizedBox(height: 2),
                            Text(
                              chats[index].text,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chats[index].time,
                            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15),
                          ),
                          SizedBox(height: 2),
                          if (chats[index].unread)
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 25,
                              width: 58,
                              child: Center(
                                child: Text(
                                  "NEW",
                                  style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 13),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
