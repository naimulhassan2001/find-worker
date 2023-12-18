import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:find_worker/view/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import '../../utils/app_string.dart';
import '../widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  TextEditingController newPassword = TextEditingController();

  TextEditingController reNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.resetPassword),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Form(
          child: Column(
            children: [
              CustomText(title: AppString.newPassword),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                  label: AppString.enterYourNewPassword,
                  controller: newPassword),
              const SizedBox(
                height: 16,
              ),
              CustomText(title: AppString.confirmPassword),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                  label: AppString.reEnterNewPassword,
                  controller: reNewPassword),
              const Spacer(),
              CustomButton(title: AppString.update, onTap: () {}),
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
