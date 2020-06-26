import 'package:flutter/material.dart';
import 'question_brain.dart';

QuizBrain quizBrain = QuizBrain();

class TriviaPage extends StatefulWidget {
//  TriviaPage({Key key, this.title}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {


  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                color: Color(0xFF0957AD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: scoreKeeper,
                    ),
                    Text(
                      quizBrain.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        bool correctAnswer = quizBrain.getAnswer();
                        if (correctAnswer == true) {
                          scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        } else {
                          scoreKeeper.add(Icon(
                            Icons.clear,
                            color: Colors.red,
                          ));
                        }

                        setState(() {
                          quizBrain.nextQuestion();
                        });
                      },
                      child: Text('true'),
                    ),
                    FlatButton(
                      onPressed: () {
                        bool correctAnswer = quizBrain.getAnswer();
                        if (correctAnswer == false) {
                          scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        } else {
                          scoreKeeper.add(Icon(
                            Icons.clear,
                            color: Colors.red,
                          ));
                        }

                        setState(() {
                          quizBrain.nextQuestion();
                        });
                      },
                      child: Text('false'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
