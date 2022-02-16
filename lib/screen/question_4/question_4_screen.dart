import 'package:design_quiz_app/screen/question_4/question_4_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'children/image_item4.dart';

class Question4Screen extends StatelessWidget {
  const Question4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Question4ScreenController());
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
                child: ImageItem4(
                  buttonColor: Colors.blueAccent.shade400,
                ),
              ),
              GestureDetector(
                onTap: controller.onTapIncorrect,
                child: ImageItem4(
                  buttonColor: Colors.blueAccent.shade100,
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
