import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 - test');
              },
            ),
          ],
        ),
      ),
    );
  }
}
