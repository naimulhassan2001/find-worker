

import 'package:flutter/material.dart';

class CustomMultiLineText extends StatelessWidget {
  CustomMultiLineText({super.key,required this.title, this.textAlign = TextAlign.start });

  String title ;
  TextAlign textAlign ;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: const TextStyle(
        color: Color(0xFF333333),
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
    );

  }
}
