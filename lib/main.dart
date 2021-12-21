import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex += 1;
    });
    print(
      'Answer Selected!',
    );
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'answers': ['Black', 'Red', 'Yellow', 'Blue'],
      },
      {
        'questionText': 'What\'s your fav animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your fav instructor?',
        'answers': ['Max', 'Brad', 'Code Addict', 'Traversy'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Answer(_answerChosen),
            Answer(_answerChosen),
            Answer(_answerChosen),
          ],
        ),
      ),
    );
  }
}
