import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/screens/result_screen.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  //controle de páginas
  final PageController pageController = PageController();
  
  bool isAnswerLocked = false;

  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctAnswer = "", selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: backgroundColor
        ),
        backgroundColor: foregroundColor,
        centerTitle: true,
        title: const Text(
          'Play Quiz',
          style: textStyle
        ),
      ),

      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listQuestions.length,
        itemBuilder: (context, index) {
          Question model = listQuestions[index];

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    model.pergunta,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Column(
                  children: List.generate(
                    model.respostas.length, 
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isAnswerLocked = true;
                            selectedAnswer = model.respostas[index];
                            correctAnswer = model.respostaCorreta;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: foregroundColor
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: selectedAnswer == model.respostas[index]
                            ?
                            foregroundColor : backgroundColor
                          ),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            model.respostas[index],
                            style: TextStyle(
                              color: selectedAnswer == model.respostas[index]
                            ?
                            backgroundColor:foregroundColor,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          if(isAnswerLocked){
            if(selectedAnswer == correctAnswer){
              correctAnswers++;
            }else{
              wrongAnswers++;
            }

            currentIndex++;
          }

          if(currentIndex != listQuestions.length){
            pageController.jumpToPage(currentIndex);
          }else{
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ResultScreen(correctAnswers: correctAnswers, wrongAnswers: wrongAnswers)
              )
            );
          }
        },
        child: Container(
          height: 70,
          color: foregroundColor,
          alignment: Alignment.center,
          child: const Text('Próxima',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: backgroundColor
          ),),
        ),
      ),
    );
  }
}