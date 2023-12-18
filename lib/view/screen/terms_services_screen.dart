import 'package:find_worker/utils/app_string.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_multiline_text.dart';

class TermsOfServiceScreen extends StatelessWidget {
  TermsOfServiceScreen({super.key, required this.title});

  String title ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            CustomMultiLineText(title: "1. ${AppString.one}"),
            const SizedBox(
              height: 8,
            ),
            CustomMultiLineText(title: "2. ${AppString.one}"),
            const SizedBox(
              height: 8,
            ),
            CustomMultiLineText(title: "3. ${AppString.one}" ),
            const SizedBox(
              height: 8,
            ),
            CustomMultiLineText(title: "4. ${AppString.one}"),
            const SizedBox(
              height: 8,
            ),
            CustomMultiLineText(title: "5. ${AppString.one}")
          ],
        ),
      ),
    );
  }
}
