

import 'package:flutter/material.dart';

import '../../utils/app_string.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.isOtp = false,



  });


  TextEditingController controller = TextEditingController() ;
  String label ;
  bool isOtp;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return label;
        }
        return null;
      },
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText:isOtp ? null : label,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8))),
    );

  }
}
