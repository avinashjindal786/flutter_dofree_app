import 'package:flutter/material.dart';
import 'package:freedo/app/common/constant.dart';
import 'package:freedo/app/data/Model/QuestionModel.dart';
import 'package:freedo/app/modules/questions/controllers/questions_controller.dart';
import 'package:get/get.dart';

import 'options.dart';


class QuestionCard extends StatelessWidget {
  QuestionCard({required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.option.length,
                (index) => Option(
              index: index,
              text: question.option[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}