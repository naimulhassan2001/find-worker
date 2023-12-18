import 'package:find_worker/controller/change_password_controller.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/forget_password_screen.dart';
import 'package:find_worker/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  ChangePasswordController changePasswordController =
      Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.changePassword),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Form(
          child: Column(
            children: [
              CustomText(
                title: AppString.currentPassword,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: changePasswordController.currentPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '${AppString.pleaseEnter} ${AppString.currentPassword}';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: AppString.enterCurrentPassword,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomText(
                title: AppString.newPassword,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: changePasswordController.newPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '${AppString.pleaseEnter} ${AppString.newPassword}';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: AppString.enterNewPassword,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomText(
                title: AppString.confirmPassword,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: changePasswordController.conformPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return '${AppString.pleaseEnter} ${AppString.confirmPassword}';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: AppString.enterConfirmPassword,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () => Get.to(ForgetPasswordScreen()),
                      child: CustomText(
                        title: AppString.forgetPassword,
                        color: const Color(0xFF0668E3),
                      )),
                ],
              ),
              const Spacer(),
              CustomButton(title: AppString.save, onTap: () {}),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
