import 'package:flutter/material.dart';
import 'quidea.dart';

void main() {
  runApp(MaterialApp(
    home: yourApp(),
  ));
}

class yourApp extends StatefulWidget {
  @override
  _yourAppState createState() => _yourAppState();
}

class _yourAppState extends State<yourApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade300,
        body: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      'Welcome to the QuIdea App!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontFamily: 'Luckiest Guy',
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Image(
                    height: 100.0,
                    width: 120.0,
                    image: AssetImage('assets/like.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Quidea()));
                      },
                      child: Text(
                        'Press here to Continue!',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

QuizApp quizApp = QuizApp();

List<bool> myAnswers = [];

class Quidea extends StatefulWidget {
  @override
  _QuideaState createState() => _QuideaState();
}

class _QuideaState extends State<Quidea> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade300,
        body: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "QuIdea",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Luckiest Guy',
                        color: Colors.teal),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      quizApp.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              quizApp.nextQuestion();
                              myAnswers.add(true);
                              print(myAnswers);
                            });
                          },
                          child: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 100.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              quizApp.nextQuestion();
                              myAnswers.add(false);
                              print(myAnswers);
                            });
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 100.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
