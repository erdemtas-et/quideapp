import 'questionsAndAnswers.dart';

class QuizApp {
  int questionNumber = 0;

  List<Question> quizBank = [
    Question('Hagrid is the name of Harry Potter\'s owl.', false),
    Question('Draco is the first name one of Harry\'s best friend', false),
    Question('Lord Voldemort\'s real name is Salazar Slytherin', false),
    Question('Hermonie is in love with Ron.', true),
    Question('Harry catch his first snitch with mouth.', true),
    Question('Dobby is a Goblin', true),
    Question('The hat can talk', true),
    Question('Harry Potter is the student in Gryffindor', true),
    Question('Dumbledore has died in 5th book.', false),
  ];

  void nextQuestion() {
    questionNumber++;
  }

  String getQuestionText() {
    return quizBank[questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return quizBank[questionNumber].questionAnswer;
  }
}
