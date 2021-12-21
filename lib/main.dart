import 'package:flutter/material.dart';

import './question.dart';

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
      'What\'s your fav color',
      'What\'s your fav animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerChosen,
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerChosen,
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerChosen,
            ),
          ],
        ),
      ),
    );
  }
}
