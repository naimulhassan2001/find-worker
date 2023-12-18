import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class JobInfo extends StatelessWidget {
  JobInfo({
    super.key,
    required this.title,
    required this.info,
  });

  String title;

  String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title: title,
          fontWeight: FontWeight.w400,
        ),
        CustomText(title: info),
      ],
    );
  }
}
