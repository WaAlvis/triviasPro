import 'package:flutter/material.dart';
import 'package:triviaflutterapp/trivia_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF0957AD),
        buttonTheme: ButtonThemeData(
          height: 44,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
            side: BorderSide(color: Colors.greenAccent),
          ),
        ),
      ),
      home: TriviaPage(),
    );
  }
}