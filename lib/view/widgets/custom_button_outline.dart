import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonOutLine extends StatelessWidget {
  CustomButtonOutLine(
      {super.key,
      required this.title,
      this.height = 56,
      this.fontSize = 18,
      this.radius = 8,
      required this.onTap});

  String title;
  Function() onTap;
  double height;
  double fontSize;
  double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF0668E3)),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Center(
          child: Text(title,
              style: TextStyle(
                color: const Color(0xFF0668E3),
                fontSize: fontSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
