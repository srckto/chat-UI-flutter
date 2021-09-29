import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String imageUrl;
  final double size;
  const UserWidget({
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imageUrl),
      radius: size,
    );
  }
}
