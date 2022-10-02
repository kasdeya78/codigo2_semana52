import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;

  List<String> questions = [
    "El hombre llegó a la Luna?",
    "Has almorzado algo?",
    "Sientes frio?",
    "Vas a salir manana?"
  ];

  List<bool> answer = [
    true,
    false,
    false,
    true,
  ];

  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        title: Text("QuizApp"),
        backgroundColor: Color(0xFF2b2d42),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];

                  if (correctAnswer == true) {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      ),
                    );
                  }

                  questionNumber++;

                  setState(() {});
                },
                child: Text(
                  "Verdadero",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFF80ed99),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];

                  if (correctAnswer == false) {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      ),
                    );
                  }

                  questionNumber++;

                  setState(() {});
                },
                child: Text(
                  "Falso",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Color(0XFFd90429),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
