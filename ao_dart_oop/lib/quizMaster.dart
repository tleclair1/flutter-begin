import 'question.dart';

class QuizMaster {
  List<Question> questionBank = [
    Question(q: 'The earth is flat.', a: false),
    Question(q: 'The earth is round.', a: true),
    Question(q: 'The earth is smaller than the moon.', a: false),
    Question(q: 'The earth is bigger than the moon.', a: true)
  ];
/*
  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }
*/
}