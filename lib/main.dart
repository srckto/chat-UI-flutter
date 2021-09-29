import 'package:chat_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        canvasColor: Color(0xFFFEF9EB),
        appBarTheme: AppBarTheme(
          color: Colors.red,
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black54,
            fontSize: 18,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(0.95),
            fontSize: 15,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
