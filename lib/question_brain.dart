import 'question.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('La respuesta es true', true),
    Question('La respuesta es true', true),
    Question('La respuesta es true', true),
    Question('La respuesta es true', true),
    Question('La respuesta es true', true),
    Question('La respuesta es false', false),
    Question('La respuesta es false', false),
    Question('La respuesta es false', false),
    Question('La respuesta es false', false),
    Question('La respuesta es false', false),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].q;
  }

  bool getAnswer(){
    return _questionBank[_questionNumber].a;
  }
}