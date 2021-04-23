import 'package:devquiz/challenge_page/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/challenge_page/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge_page/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: 'O que o flutter faz em sua totalidade',
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: NextButtonWidget(label: 'Pular')),
            Expanded(child: NextButtonWidget(label: 'Confirmar')),
          ],
        ),
      ),
    );
  }
}
