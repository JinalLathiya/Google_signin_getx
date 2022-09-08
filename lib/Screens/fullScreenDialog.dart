import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomFullScreenDialog {
  static void showDialog() {
    Get.dialog(
      WillPopScope(
        child: Container(
          alignment: Alignment.center,
          child: const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.cyanAccent,
              ),
            ),
          ),
        ),
        onWillPop:() => Future.value(false),
    ),
      barrierDismissible: false,
      barrierColor: Colors.grey.withOpacity(0.2),
      useSafeArea: true,
    );
  }
  static void cancelDialog () {
    Get.back();
  }
}
