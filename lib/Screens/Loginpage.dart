import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_signin/Controllers/login_controller.dart';

class LogInPage extends GetView<LogInController> {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LogInController controller = Get.put(LogInController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                "https://cdn.freebiesupply.com/logos/large/2x/google-g-2015-logo-png-transparent.png",
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Google SignIn",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                controller.logIn();
                Get.toNamed('/welcome_page');
              },
              elevation: 0,
              label: const Text(
                "SignIn with Google",
              ),
            )
          ],
        ),
      ),
    );
  }
}
