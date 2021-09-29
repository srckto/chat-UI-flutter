import 'package:chat_ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/models/message_model.dart' as userModle;

class FavoriteContact extends StatelessWidget {
  const FavoriteContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   color: Colors.grey.withOpacity(0.5),
      // ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userModle.favorites.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                UserWidget(imageUrl: userModle.favorites[index].imageUrl, size: 33.0),
                SizedBox(height: 5),
                Text(
                  userModle.favorites[index].name,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
