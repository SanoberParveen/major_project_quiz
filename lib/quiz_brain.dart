import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Spiders have 6 legs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'There is no railway system in Iceland', a: true),
    Question(q: 'Humans have 4 senses.', a: false),
    Question(q: 'Archimedes is considered as the father of History.', a: false),
    Question(q: 'A group of cows is called a \"murder\"', a: true),
    Question(q: 'Stapes is the smallest bone in the human body.', a: true),
    Question(q: 'Vatican city is the largest city in the world', a: false),
    Question(q: 'Baby panda is bigger than a mouse after being born', a: false),
    Question(
        q: 'Smack is the word used to address a group of jellyfish', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
