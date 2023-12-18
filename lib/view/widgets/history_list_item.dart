import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HistoryListItem extends StatelessWidget {
  HistoryListItem({
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                flex: 15,
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
                              child: CustomText(
                                title: name,
                              )),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                              color: const Color(0xFFDCE8E0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          child: Text(
                            status,
                            style: const TextStyle(
                              color: Color(0xFF2BA24C),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF818181)),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset(
                          AppImage.hand,
                          width: 18,
                          height: 18,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 4),
                        CustomText(
                            title: service,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          size: 18,
                          color: Color(0xFF818181),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        CustomText(
                            title: date,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF818181)),
                        const Spacer(),
                        const Icon(
                          Icons.access_time,
                          size: 18,
                          color: Color(0xFF818181),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        CustomText(
                            title: time,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF818181)),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
