import 'package:find_worker/controller/settingController.dart';
import 'package:find_worker/view/screen/setting%20Screen/setting_item.dart';
import 'package:find_worker/view/screen/terms_services_screen.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';

import '../../../utils/app_string.dart';
import '../change_password_screen.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  SettingController settingController = Get.put(SettingController());

  final _valueNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.setting),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  CustomText(title: AppString.language, fontWeight: FontWeight.w400,),
                  AdvancedSwitch(

                    controller: _valueNotifier,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    enabled: true,
                    height: 20,
                    width: 70,

                    activeChild: const Center(child: Text("English", style: TextStyle(
                      color: Colors.black
                    ),)),
                    inactiveChild: const Center(child: Text("Arabic", style: TextStyle(color: Colors.black),)),
                  )
                ],
              ),
            ),
            SettingItem(title: AppString.changePassword, onTap: () {
              Get.to(ChangePasswordScreen()) ;
            }),
            SettingItem(title: AppString.termsOfServices, onTap: () {
              Get.to(TermsOfServiceScreen(title: AppString.termsOfServices,));
            }),
            SettingItem(title: AppString.privacyPolicy,  onTap: () {
              Get.to(TermsOfServiceScreen(title: AppString.privacyPolicy,));

            }),
            SettingItem(title: AppString.aboutUs , onTap: () {
              Get.to(TermsOfServiceScreen(title: AppString.aboutUs,));

            }),
            SettingItem(title: AppString.support , onTap: () {
              Get.to(TermsOfServiceScreen(title: AppString.support,));

            }),




          ],
        ),
      ),
    );
  }
}
