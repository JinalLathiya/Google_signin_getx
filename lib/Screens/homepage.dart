import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_signin/Controllers/Home_controller.dart';

class LoadPage extends GetView<HomeController> {
  const LoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            Colors.white,
          ),
        ),
      ),
    );
  }
}
