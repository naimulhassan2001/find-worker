import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_image.dart';
import '../../../../utils/app_string.dart';
import 'card_item.dart';

class HomeScreenItems extends StatelessWidget {
  const HomeScreenItems({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: AppString.carWash,
              fontSize: 18,
            ),
            CustomText(title: AppString.seeAll, color: const Color(0xFF0668E3)),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(
              image: AppImage.carWash1,
              location: "Abu Dhabi",
              name: "John Doe",
            ),
            CardItem(
              image: AppImage.carWash2,
              location: "Abu Dhabi",
              name: "John Doe",
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: AppString.homeClean,
              fontSize: 18,
            ),
            CustomText(
              title: AppString.seeAll,
              color: const Color(0xFF0668E3),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(
              image: AppImage.homeClean1,
              location: "Abu Dhabi",
              name: "John Doe",
            ),
            CardItem(
              image: AppImage.homeClean2,
              location: "Abu Dhabi",
              name: "John Doe",
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: AppString.airConditionMaintenance,
              fontSize: 18,
            ),
            CustomText(
              title: AppString.seeAll,
              color: const Color(0xFF0668E3),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItem(
              image: AppImage.airCon1,
              location: "Abu Dhabi",
              name: "John Doe",
            ),
            CardItem(
              image: AppImage.airCon2,
              location: "Abu Dhabi",
              name: "John Doe",
            )
          ],
        ),
      ],
    );
  }
}
