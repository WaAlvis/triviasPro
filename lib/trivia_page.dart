import 'package:flutter/material.dart';
import 'package:triviaflutterapp/question.dart';

class TriviaPage extends StatefulWidget {
//  TriviaPage({Key key, this.title}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {
  int numberQuestion = 0;

  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'pregunta 1?', a: true),
    Question(q: 'pregunta 2?', a: true),
    Question(q: 'pregunta 3?', a: false),
    Question(q: 'pregunta 4?', a: false),
  ];

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
                      questionBank[numberQuestion].q,
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
                        bool correctAnswer = questionBank[numberQuestion].a;
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
                          numberQuestion++;
                        });
                      },
                      child: Text('true'),
                    ),
                    FlatButton(
                      onPressed: () {
                        bool correctAnswer = questionBank[numberQuestion].a;
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
                          numberQuestion++;
                        });
                      },
                      child: Text('false'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('3'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('4'),
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
