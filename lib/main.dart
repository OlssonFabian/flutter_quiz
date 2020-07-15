import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    {
      'questionText': 'How familiar are you with chilis?',
      'answers': [
        'Not at all',
        'Kind of familiar',
        'Familiar',
        'I eat hot stuff for breakfast!',
      ],
    },
    {
      'questionText': 'What\'s your favorite chili pepper',
      'answers': [
        'Jalapeno',
        'Scotch Bonnet',
        'Ghost pepper',
        'Carolina Reaper',
      ],
    },
    {
      'questionText': 'What\'s your favorite hot sauce',
      'answers': [
        'Tabasco',
        'Sriracha',
        'Da Bomb',
        'The Last Dab',
      ],
    },
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
            title: Text('The Chili App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ), //Question get passed to Question class as the first arg
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
