
import 'package:flutter/material.dart';

import '../../../utils/app_image.dart';


class FilterDrawer extends StatelessWidget {
  FilterDrawer({super.key});

  List categoryList = [
     'Home Clean', 'Car Wash','Farmer','Air Condition Maintenance', 'Housekeeper','Home Maintenance','Pipe Fitter','Jens Salon','Man Driver',
    'Manicure & Pedicure','Woman Driver','Ladies Salon','Home Business','Butcher','Private Tutor','Henna','Movers',
    'Gypsum Board & Floor','Car Tires Repair','Car Recovery','Catering','Cable Fixing'
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            const SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Filter',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(AppImage.crossIcon))
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 10.0,
                  // runSpacing: 10.0,
                  children: categoryList.map((item){
                    return Chip(
                      labelPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                      padding: EdgeInsets.all(0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        side: BorderSide(
                          color: Color(0xFF0668E3),
                        )
                      ),
                        label: Text(
                            item,
                          style: const TextStyle(
                            color: Color(0xFF0668E3),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ));
                  }).toList(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF0668E3),
              ),
              alignment: Alignment.center,
              width: 260,
              height: 56,
              child: const Text(
                "Apply",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
