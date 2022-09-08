import 'package:get/get.dart';

import '../Controllers/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
          () => WelcomeController(),
    );
  }
}
