import 'package:design_quiz_app/screen/question_1/children/image_item.dart';
import 'package:design_quiz_app/screen/question_1/question_1_screen_controller.dart';
import 'package:design_quiz_app/screen/question_2/question_2_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'children/image_item2.dart';

class Question2Screen extends StatelessWidget {
  const Question2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Question2ScreenController());
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
                onTap: controller.onTapIncorrect,
                child: const ImageItem2(
                  message1: 'which of these images looks "more correct?',
                  message2: 'Click the correct image',
                  nameColor: Colors.black87,
                  message1Color: Colors.white,
                  message2Color: Colors.black87,
                  message1Circular: 15,
                  message2Circular: 40,
                  message1CircularRight: 5,
                  fontWeight: FontWeight.normal,
                  iconColor: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: controller.onTapCorrect,
                child: const ImageItem2(
                  message1: 'which of these images looks "more correct?',
                  message2: 'Click the correct image',
                  nameColor: Colors.black87,
                  message1Color: Colors.white,
                  message2Color: Colors.black87,
                  message1Circular: 15,
                  message2Circular: 40,
                  message1CircularRight: 5,
                  fontWeight: FontWeight.bold,
                  iconColor: Colors.black87,
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
