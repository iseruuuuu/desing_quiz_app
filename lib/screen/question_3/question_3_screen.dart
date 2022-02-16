import 'package:design_quiz_app/screen/question_1/children/image_item.dart';
import 'package:design_quiz_app/screen/question_1/question_1_screen_controller.dart';
import 'package:design_quiz_app/screen/question_2/question_2_screen_controller.dart';
import 'package:design_quiz_app/screen/question_3/question_3_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'children/image_item3.dart';

class Question3Screen extends StatelessWidget {
  const Question3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Question3ScreenController());
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: controller.onTapCorrect,
                child: const ImageItem3(
                  iconSize: 30,
                ),
              ),
              GestureDetector(
                onTap: controller.onTapIncorrect,
                child: const ImageItem3(
                  iconSize: 45,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Text(
            'Select the design that is most correct',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
