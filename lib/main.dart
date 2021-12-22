import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  static const List _questions = [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Yellow', 'score': 15},
        {'text': 'Blue', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 20},
        {'text': 'Lion', 'score': 15},
        {'text': 'Elephant', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your fav instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Brad', 'score': 20},
        {'text': 'Code Addict', 'score': 15},
        {'text': 'Traversy', 'score': 5}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerChosen,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
