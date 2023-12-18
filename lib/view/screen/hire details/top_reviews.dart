import 'package:flutter/material.dart';

import '../../../utils/app_string.dart';
import '../../widgets/custom_text.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: AppString.topReviews,
          fontSize: 18,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CustomText(
              title: AppString.smith,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
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
            CustomText(
                title: AppString.niceServices,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF818181)),
            CustomText(
                title: "01 aug",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color(0xFF858585)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CustomText(
              title: AppString.smith,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
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
            CustomText(
                title: AppString.niceServices,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF818181)),
            CustomText(
                title: "01 aug",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color(0xFF858585)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: AppString.smith,
              fontWeight: FontWeight.w400,
            ),
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
            CustomText(
                title: AppString.niceServices,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF818181)),
            CustomText(
                title: "01 aug",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color(0xFF858585)),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
      ],
    );
  }
}
