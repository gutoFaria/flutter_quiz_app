import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/screens/play_quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Quiz Flutter',
          style: TextStyle(
            color: backgroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Math App',
              style: TextStyle(
                color: foregroundColor,
                fontSize: 40,
                fontWeight: FontWeight.w700
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: foregroundColor
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) =>const PlayQuizScreen()
                  )
                );
              }, 
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}