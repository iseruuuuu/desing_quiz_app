import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Question3ScreenController extends GetxController {
  void onTapCorrect() {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.SUCCES,
      borderSide: const BorderSide(color: Colors.green, width: 2),
      width: MediaQuery.of(Get.context!).size.width / 2,
      buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Correct',
      desc: 'process next stage.',
      showCloseIcon: true,
      btnCancelText: 'Next',
      btnCancelColor: Colors.green,
      dismissOnBackKeyPress: true,
      btnCancelOnPress: () {
        Get.back();
      },
    ).show();
  }

  void onTapIncorrect() {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.ERROR,
      borderSide: const BorderSide(color: Colors.red, width: 2),
      width: MediaQuery.of(Get.context!).size.width / 2,
      buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Incorrect',
      desc: 'Choose again.',
      showCloseIcon: true,
      btnCancelText: 'RETRY',
      dismissOnBackKeyPress: true,
      btnCancelOnPress: () {
        Get.back();
      },
    ).show();
  }
}
