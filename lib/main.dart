import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    'What\'s your favorite color',
    'What\'s your favorite food',
    'What\'s your favorite chilipepper'
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('The Fab APP!'),
          ),
          body: Column(
            children: [
              Question(questions[
                  _questionIndex]), //Question get passed to Question class as the first arg
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
