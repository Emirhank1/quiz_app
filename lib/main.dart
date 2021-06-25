import 'package:flutter/material.dart';
import 'package:quiz_app/FirstPage.dart';
import 'Quiz1/Quiz1.dart';

void main() => runApp(MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    ));

class QuizTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuestionPage(),
          ),
        ),
      ),
    );
  }
}
