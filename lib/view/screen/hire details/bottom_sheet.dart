import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/widgets/custom_button.dart';
import 'package:find_worker/view/widgets/custom_multiline_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/custom_button_outline.dart';
import '../../widgets/custom_text.dart';

class HireNow {
  BottomSheetModel(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                CustomText(
                    title: AppString.waitingForProviderResponse,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0668E3)),
                const SizedBox(
                  height: 16,
                ),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 100,
                  lineHeight: 8.0,
                  percent: 0.5,
                  barRadius: const Radius.circular(50),
                  progressColor: const Color(0xFF0668E3),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonOutLine(
                    title: AppString.cancel,
                    onTap: () {
                      NoResponseButtomSheet(context);
                    })
              ],
            ),
          ),
        );
      },
    );
  }

  NoResponseButtomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          height: 340,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    AppImage.noResponse,
                    width: 100,
                    height: 100,
                  ),
                  CustomMultiLineText(title: AppString.noResponse),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(title: AppString.tryAgain, onTap: () {}),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButtonOutLine(title: AppString.cancel, onTap: () {})
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
