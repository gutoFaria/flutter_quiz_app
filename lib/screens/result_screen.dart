// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/screens/play_quiz_screen.dart';
import 'package:quiz_app/widgets/answer_tab.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers, wrongAnswers;
  const ResultScreen({
    Key? key,
    required this.correctAnswers,
    required this.wrongAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: backgroundColor
        ),
        backgroundColor: foregroundColor,
        title: const Text(
          'Resultado',
          style: textStyle,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnswerTab(title: "Respostas Corretas", value: correctAnswers),
                AnswerTab(title: "Respostas Erradas", value: wrongAnswers)
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: foregroundColor
              ),
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen()
                  ), 
                  (route) => false);
              }, 
              child: const Text(
                'Reset Quiz',
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
