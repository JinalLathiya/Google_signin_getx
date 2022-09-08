import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'Home_controller.dart';

class WelcomeController extends GetxController {
  HomeController homeController = Get.find<HomeController>();

  late User user;

  @override
  void onInit() {
    user = Get.arguments;
    super.onInit();
  }

  void logOut() async {
    await homeController.googleSign.disconnect();
    await homeController.firebaseAuth.signOut();
  }
}
