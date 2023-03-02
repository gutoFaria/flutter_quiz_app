import 'package:flutter/material.dart';

import '../models/question.dart';

const Color backgroundColor = Color.fromRGBO(0, 22, 144, 0.8);
const Color foregroundColor = Colors.white;

const TextStyle textStyle = TextStyle(
  color: backgroundColor,
  fontSize: 25,
  fontWeight: FontWeight.bold
);


List<Question> listQuestions = [
  Question(
    pergunta: 'Quanto é 2 + 2 ?', 
    respostaCorreta: '4', 
    respostas: [
      '2',
      '3',
      '4',
      '5'
    ]
  ),

  Question(
    pergunta: 'Quanto é 7 + 5 ?', 
    respostaCorreta: '12', 
    respostas: [
      '10',
      '12',
      '5',
      '8'
    ]
  ),

  Question(
    pergunta: 'Quanto é 5 + 5 ?', 
    respostaCorreta: '10', 
    respostas: [
      '15',
      '8',
      '6',
      '10'
    ]
  ),

  Question(
    pergunta: 'Quanto é 3 + 2 ?', 
    respostaCorreta: '5', 
    respostas: [
      '2',
      '3',
      '4',
      '5'
    ]
  ),

  Question(
    pergunta: 'Quanto é 6 + 7 ?', 
    respostaCorreta: '13', 
    respostas: [
      '2',
      '31',
      '13',
      '9'
    ]
  ),
];