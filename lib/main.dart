import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
import './klimatic.dart';

void main() async {
  // List _data = await getJSON();

  runApp(
    MaterialApp(
      title: 'Klimatic', home: Klimatic(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('data'),
      //     centerTitle: true,
      //     backgroundColor: Colors.orangeAccent,
      //   ),
      //   body: Center(
      //     child: Center(
      //       child: ListView.builder(
      //         itemCount: _data.length,
      //         padding: const EdgeInsets.all(16.0),
      //         itemBuilder: (BuildContext context, int position) {
      //           if (position.isOdd) return Divider();

      //           final index = position ~/ 2;

      //           return ListTile(
      //             leading: CircleAvatar(
      //               backgroundColor: Colors.green,
      //               child: Text(
      //                 "${_data[index]['id']}",
      //                 style: TextStyle(
      //                   fontSize: 17.4,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //             title: Text(
      //               "${_data[index]['title']}",
      //               style: TextStyle(fontSize: 19.9),
      //             ),
      //             subtitle: Text(
      //               "${_data[index]['body']}",
      //               style: TextStyle(
      //                 fontSize: 14.9,
      //                 fontStyle: FontStyle.italic,
      //                 color: Colors.grey,
      //               ),
      //             ),
      //             onTap: () {
      //               _showOnTapMessage(
      //                 context,
      //                 "${_data[index]['title']}",
      //               );
      //             },
      //           );
      //         },
      //       ),
      //     ),
      //   ),
      // ),
    ),
  );
}

// void _showOnTapMessage(BuildContext context, String message) {
//   var alert = new AlertDialog(
//     title: Text('App'),
//     content: Text(message),
//     actions: [
//       ElevatedButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: Text('OK'),
//       )
//     ],
//   );

//   showDialog(context: context, builder: (context) => alert);
// }

// Future<List> getJSON() async {
//   var url = Uri.https('jsonplaceholder.typicode.com', '/posts');

//   var response = await http.get(url);

//   return jsonDecode(response.body);
// }

// import 'package:first_app/result.dart';
// import 'package:flutter/material.dart';

// import './quiz.dart';
// import './result.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   static const List _questions = [
//     {
//       'questionText': 'What\'s your fav color?',
//       'answers': [
//         {'text': 'Black', 'score': 10},
//         {'text': 'Red', 'score': 20},
//         {'text': 'Yellow', 'score': 15},
//         {'text': 'Blue', 'score': 5}
//       ],
//     },
//     {
//       'questionText': 'What\'s your fav animal?',
//       'answers': [
//         {'text': 'Rabbit', 'score': 10},
//         {'text': 'Snake', 'score': 20},
//         {'text': 'Lion', 'score': 15},
//         {'text': 'Elephant', 'score': 5}
//       ],
//     },
//     {
//       'questionText': 'What\'s your fav instructor?',
//       'answers': [
//         {'text': 'Max', 'score': 10},
//         {'text': 'Brad', 'score': 20},
//         {'text': 'Code Addict', 'score': 15},
//         {'text': 'Traversy', 'score': 5}
//       ],
//     },
//   ];

//   var _questionIndex = 0;
//   var _totalScore = 0;

//   void _resetQuiz() {
//     setState(() {
//       _questionIndex = 0;
//       _totalScore = 0;
//     });
//   }

//   void _answerChosen(int score) {
//     _totalScore += score;

//     setState(() {
//       _questionIndex += 1;
//     });
//     if (_questionIndex < _questions.length) {
//       print('We have more Questions!');
//     } else {
//       print('No More Questions!');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('My First App'),
//           ),
//           body: _questionIndex < _questions.length
//               ? Quiz(
//                   answerQuestion: _answerChosen,
//                   // bug here
//                   questionIndex: _questionIndex,
//                   questions: _questions,
//                 )
//               : Result(_totalScore, _resetQuiz)),
//     );
//   }
// }
