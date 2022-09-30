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
    "El hombre llleg[o a la Luna",
    "Has almorzado algo",
    "Sientes frio",
    "Vas a salir manana?"
  ];

  List<bool> answer = [
    true,
    false,
    false,
    true,
  ];

  List<Icon> scoreKeeper = [
    Icon(Icons.check, color: Colors.greenAccent),
    Icon(Icons.close, color: Colors.redAccent),
    Icon(Icons.check, color: Colors.greenAccent),
    Icon(Icons.close, color: Colors.redAccent),
  ];

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
                  questionNumber++;
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.redAccent,
                    ),
                  );
                  setState(() {});
                },
                child: Text(
                  "Verdadero",
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
                onPressed: () {},
                child: Text(
                  "Falso",
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
