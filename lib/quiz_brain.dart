import 'package:semana52/question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question(questionText: "El hombre llegó a la Luna?", questionAnswer: true),
    Question(questionText: "Has almorzado algo?", questionAnswer: false),
    Question(questionText: "Sientes frio?", questionAnswer: false),
    Question(questionText: "Vas a salir manana?", questionAnswer: true),
  ];

  int _questionNumber = 0;

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  nextQuestion() {
    _questionNumber++;
  }
}
