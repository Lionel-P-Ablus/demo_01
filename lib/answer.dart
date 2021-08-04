import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.orange,
          side: BorderSide(color: Colors.orange)
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
