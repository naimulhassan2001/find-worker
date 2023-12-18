
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.title, this.fontSize =14, this.fontWeight = FontWeight.w500, this.color});

  String title ;
  double fontSize ;
  FontWeight fontWeight ;
  Color? color = Color(0xFF333333) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
          ),
        ),
      ],
    );

  }
}
