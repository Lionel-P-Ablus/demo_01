import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'quest 1',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'quest 2',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'quest 3',
        'answers': ['Max', 'Max', 'Singh', 'Singh']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map((aswer) {
              return Answer(_answerQuestion, aswer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
