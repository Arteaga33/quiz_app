import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //Here im passing the callback function I think 
  final String answerText;

  Answer(this.selectHandler, String this.answerText);
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(style: ButtonStyle( // elevatedButton, TextButton, OutlineButton. Different options.
            //backgroundColor: MaterialStateProperty.all(Colors.blue[400]), //To set the button background color.
            //foregroundColor: MaterialStateProperty.all(Colors.black) //To change letter color in button.
            ),
            onPressed: selectHandler,
            child: Text(answerText)),
    );
  }
}