// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class AnswerTab extends StatelessWidget {
  final String title;
  final int value;

  const AnswerTab({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700
          ),
        ),
        Text(
          '$value',
          style: const TextStyle(
            color: foregroundColor,
            fontSize: 60,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
