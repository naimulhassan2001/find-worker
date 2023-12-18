import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  CustomBackground({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.90, -0.05),
            end: Alignment(0.75, -0.20),
            colors: [Color(0xFFF3F3F3), Color(0xFFCCE0F9)],
          ),
        ),
        child: child);
  }
}
