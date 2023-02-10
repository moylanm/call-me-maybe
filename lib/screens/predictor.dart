import 'package:call_me_maybe/config/styles.dart';
import 'package:call_me_maybe/models/eight_ball.dart';
import 'package:flutter/material.dart';

class Predictor extends StatefulWidget {
  const Predictor({super.key});

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final eightBall = EightBall([
    'Yes, definitely.',
    'Unlikely but possible.',
    'Maybe indeed.',
    'The future is uncertain.'
  ]);

  @override
  Widget build(BuildContext context) {
    final heightPad = MediaQuery.of(context).size.height * 0.25;

    return Center(
      child: Column(
        children: [
          SizedBox(height: heightPad),
          Text('Call Me... Maybe?', style: Styles.textLarge),
          SizedBox(height: heightPad * 0.2),
          _textButton(),
          SizedBox(height: heightPad * 0.2),
          Text(eightBall.answer, style: Styles.textLarge)
        ],
      ),
    );
  }

  Widget _textButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          eightBall.shake();
        });
      },
      child: Text('Ask a question... Tap for the answer.', style: Styles.textDefault),
    );
  }
}