
import 'package:find_worker/utils/app_image.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:flutter/material.dart';

import 'filter_drawer.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  List gridViewItemList = [
    {"title": AppString.homeClean, "image": AppImage.cleanHome},
    {"title": AppString.carWash, "image": AppImage.carWash},
    {
      "title": AppString.airConditionMaintenance,
      "image": AppImage.airCondition
    },
    {"title": AppString.homeClean, "image": AppImage.houseKeeper},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        actions: [
          

          Expanded(
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: AppString.searchByCategories,
                      hintStyle: const TextStyle(
                        color: Color(0xFFA7A7A7)
                      ),
                      prefixIcon: const Icon(
                          Icons.search_outlined,
                        color: Color(0xFFA7A7A7),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE7F0FD),
                        ),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ),
          ),

          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(AppImage.filter),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppString.topFeaturedServices,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisExtent: 135),
                itemBuilder: (context, index) {
                  var item = gridViewItemList[index];
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF6AA4EE)),
                          ),
                        ),
                        child: Center(
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                item['image'],
                                width: 50,
                                height: 50,
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        item['title'],
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
