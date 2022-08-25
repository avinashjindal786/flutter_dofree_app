import 'package:flutter/material.dart';
import 'package:freedo/app/modules/question_watch/controllers/question_watch_controller.dart';
import 'package:freedo/app/modules/questions/controllers/questions_controller.dart';
import 'package:get/get.dart';
//import 'package:quiz_app/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionWatchController _controller = Get.put(QuestionWatchController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}