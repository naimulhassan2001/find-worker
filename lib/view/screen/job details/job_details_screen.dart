import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/job%20details/job_info.dart';
import 'package:find_worker/view/screen/job%20details/job_delete_function.dart';
import 'package:find_worker/view/widgets/custom_button.dart';
import 'package:find_worker/view/widgets/custom_multiline_text.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class JobDetailScreen extends StatelessWidget {
  JobDetailScreen({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    required this.service,
    required this.status,
    required this.time,
    required this.date,
    required this.title,
    this.buttonColors = const Color(0xFFDCE8E0),
    this.textColors = const Color(0xFF2BA24C),
  });

  String name;
  String title;

  String phone;

  String address;

  String status;

  String service;

  String time;

  String date;
  Color? buttonColors;

  Color? textColors;

  DeleteFunction deleteFunction = DeleteFunction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                deleteFunction.deletes(context);
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Center(child: Image.asset(AppImage.delete)),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            SizedBox(height: 200, child: Image.asset(AppImage.johnDoes)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(title: AppString.john, fontSize: 18),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                const SizedBox(
                  width: 4,
                ),
                CustomText(title: "(4.5)")
              ],
            ),
            const SizedBox(height: 8),
            JobInfo(title: AppString.contact, info: phone),
            const SizedBox(height: 8),
            JobInfo(title: AppString.address, info: address),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  title: AppString.aboutJob,
                  fontSize: 18,
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: AppString.status,
                  fontWeight: FontWeight.w400,
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: buttonColors,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: CustomText(
                      title: status,
                      color: textColors,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            const SizedBox(height: 8),
            JobInfo(title: AppString.service, info: service),
            const SizedBox(height: 8),
            JobInfo(title: AppString.time, info: time),
            const SizedBox(height: 8),
            JobInfo(title: AppString.date, info: date),
            const Spacer(),
            Center(
              child: title.contains(AppString.hireDetails)
                  ? CustomButton(
                      title: AppString.complete,
                      color: const Color(0xFF2BA24C),
                      onTap: () {})
                  : null,
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: title.contains(AppString.hireDetails)
                  ? CustomMultiLineText(
                      title:
                          "Click on the “Complete” button after getting your current service to complete the service status.")
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
