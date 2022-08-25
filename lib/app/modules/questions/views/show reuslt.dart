import 'package:flutter/material.dart';
import 'package:freedo/app/modules/questions/controllers/questions_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ShowResult extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      body: Center(child: Text("${_controller.answer[0]}"),)
    );
  }
}



class Show extends StatelessWidget {
  final String value;

  Show({required this.value});
  @override
  Widget build(BuildContext context) {
    return Text(value);
  }



}



