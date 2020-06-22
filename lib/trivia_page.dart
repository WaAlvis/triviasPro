import 'package:flutter/material.dart';

class TriviaPage extends StatefulWidget {
//  TriviaPage({Key key, this.title}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {

  int numberQuestion=0;

  List<Icon> scoreKeeper = [];
  List<String> questions = ['Pregunta 1?', 'Pregunta 2?', 'Pregunta 3?','Pregunta 4?','Pregunta 5?'];

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
                      questions[numberQuestion],
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
                        setState(() {
                          scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                          numberQuestion++;
                        }
                        );
                      },
                      child: Text('1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          scoreKeeper.add(Icon(
                            Icons.clear,
                            color: Colors.red,
                          ));
                          numberQuestion++;
                        }
                        );
                      },
                      child: Text('2'),
                    ),

                    FlatButton(
                      onPressed: () {
                        setState(() {
                          scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                          numberQuestion++;
                        }
                        );
                      },
                      child: Text('3'),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          scoreKeeper.add(Icon(
                            Icons.clear,
                            color: Colors.red,
                          ));
                          numberQuestion++;
                        }
                        );
                      },
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
