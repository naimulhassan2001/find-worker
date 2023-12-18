import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/hire%20details/bottom_sheet.dart';
import 'package:find_worker/view/widgets/custom_button_outline.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HireAction extends StatelessWidget {
  HireAction({super.key});



  HireNow hireNow = HireNow() ;



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: width / 3,
          height: 56,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF0668E3)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Center(
            child: Text(
              AppString.rateUs,
              style: const TextStyle(
                color: Color(0xFF0668E3),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            hireNow.BottomSheetModel(context) ;

          },
          child: Container(
            width: width / 3,
            height: 56,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: const Color(0xFF0668E3),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Center(
              child: Text(
                AppString.hireNow,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
