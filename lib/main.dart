import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}
//Other way to do it void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //The underscore "_" makes private class, variable, etc.
  final _questions = const [
    //const makes sure that It will never change final, similar after running time.
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 4},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 5}
      ]
    }, //Here a map is created values with keys or a dictionary.
    {
      'questionText': 'Who\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 1},
        {'text': 'Hamburger', 'score': 5},
        {'text': 'Steak', 'score': 5}
      ]
    }
  ]; //This is a list with 3 maps or dictionary inside, this has change you get the idea.
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score; //To increase the previous totalscore by score.
    setState(() {
      //Forces Flutter to re-render part of the UI by calling build method again Flutter makes it efficient.
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    print(_questionIndex);
  }

  @override //Style
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz), //The colons means else for widgets
      ),
    );
  }
}
