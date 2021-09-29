import 'package:chat_ui/widgets/all_chat.dart';
import 'package:chat_ui/widgets/catergory_selector.dart';
import 'package:chat_ui/widgets/favorite_contat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Chat App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 28,
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 28,
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Favorite Contacts",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    FavoriteContact(),
                    SizedBox(height: 7),
                    AllChat(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
