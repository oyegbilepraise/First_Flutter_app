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
  static const List questions = [
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

  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < questions.length) {
      print('We have more Questions!');
    } else {
      print('No More Questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerChosen, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
