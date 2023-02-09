import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key); //Reasearch this expresion
  final String questionText; //The final is added to avoid change inside the class. It doesn't change after inicialization.

  Question(this.questionText); //Short way of making a constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
     ), );
  }
}
