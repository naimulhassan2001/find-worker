import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/view/screen/login_as_screen.dart';
import 'package:find_worker/view/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> goToHomeScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(const LogInAsScreen());
  }

  @override
  Widget build(BuildContext context) {
    goToHomeScreen(context);
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: Image.asset(AppImage.logo),
        ),
      ),
    );
  }
}
