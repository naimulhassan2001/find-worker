import 'package:find_worker/view/screen/reset_password_screem.dart';
import 'package:find_worker/view/widgets/custom_button.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:find_worker/view/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_string.dart';

class ForgetOtp extends StatelessWidget {
  ForgetOtp({super.key});

  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.otp),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              AppString.sendVerificationCode,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
                SizedBox(
                  width: width / 8,
                  child: CustomTextField(
                      label: AppString.otp, controller: otp, isOtp: true),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(title: AppString.didNotGetTheCode),
                GestureDetector(
                  onTap: () {},
                  child: CustomText(title: AppString.resend),
                )
              ],
            ),
            const Spacer(),
            CustomButton(
                title: AppString.verify,
                onTap: () {
                  Get.to(ResetPasswordScreen());
                }),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
