
import 'package:flutter/material.dart';

import 'personalInformation.dart';
import 'profile_logout.dart';

class ProfileWidget extends StatelessWidget {


  ProfileWidget({super.key,
    required this.personIcon,
    required this.personInformation,
    required this.onTap
  });

  String personIcon;
  String personInformation;
  Function onTap ;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 72,
      padding: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFCDE1F9),
          )
        )
      ),

      child: GestureDetector(
        onTap: (){
          onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tab(
              icon: Image.asset(personIcon),
            ),
            const SizedBox(width: 16),
            Text(
              personInformation,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
