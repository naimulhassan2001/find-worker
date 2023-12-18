import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/hire%20details/top_reviews.dart';
import 'package:find_worker/view/widgets/custom_multiline_text.dart';
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'hire_action.dart';

class HireDetailsScreen extends StatelessWidget {
  HireDetailsScreen({super.key});

  String location = "Abu Dhabi";
  String service = AppString.carWash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.hireDetails),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImage.johnDoe,
                height: 200,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  CustomText(
                    title: AppString.john,
                    fontSize: 18,
                  ),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomText(
                    title: "(4.5)",
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(title: AppString.location),
                  CustomText(title: location, fontWeight: FontWeight.w600),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(title: AppString.service),
                  CustomText(title: service, fontWeight: FontWeight.w600),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 8),
              const TopReviews(),
              const SizedBox(height: 8),
              CustomText(
                title: AppString.description,
                fontSize: 18,
              ),
              const SizedBox(height: 8),
              CustomMultiLineText(title: AppString.descriptiondetails),
              const SizedBox(height: 24),
              HireAction(),

            ],
          ),
        ),
      ),
    );
  }
}
