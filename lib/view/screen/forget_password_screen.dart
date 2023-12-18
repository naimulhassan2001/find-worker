import 'package:find_worker/controller/forget_password_controller.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/widgets/custom_button.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:find_worker/view/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forget_otp.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  ForgetPasswordController forgetPasswordController =
      Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.forgetPassword),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppString.verifyOtp,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CustomText(title: AppString.email),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
                label: AppString.enterYourEmail,
                controller: forgetPasswordController.emailController),
            const Spacer(),
            CustomButton(title: AppString.getOTP, onTap: (){Get.to(ForgetOtp());}),
            const SizedBox(
              height: 16,
            ),

          ],
        ),
      ),
    );
  }
}
