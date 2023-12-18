import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_string.dart';

class HireListItem extends StatelessWidget {
  HireListItem({
    super.key,
    required this.name,
    required this.image,
    required this.status,
    required this.phone,
    required this.address,
    required this.service,
    required this.time,
    required this.date,
  });

  String name;

  String image;

  String phone;

  String address;

  String status;

  String service;

  String time;

  String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF6AA4EE)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: Center(
                    child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ))),
            const SizedBox(width: 16),
            Expanded(
                flex: 19,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: CustomText(title: name),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                              color: const Color(0xFFFFF8E6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          child: CustomText(
                              title: status,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFFFB701)),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        CustomText(
                            title: "(4.5)",
                            color: const Color(0xFF818181),
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            title: AppString.service,
                            color: const Color(0xFF818181),
                            fontSize: 12),
                        const SizedBox(width: 4),
                        CustomText(
                          title: service,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
