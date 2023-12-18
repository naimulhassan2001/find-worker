
import 'package:find_worker/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/categories_controller.dart';


class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {

    CategoriesController categoriesController = Get.put(CategoriesController()) ;


    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoriesController.gridViewItemList.length,
      itemBuilder: (context, index) {
        var listViewItems = categoriesController.gridViewItemList[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 70,
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side:
                      BorderSide(width: 1, color: Color(0xFF6AA4EE)),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          listViewItems['image'],
                          width: 30,
                          height: 30,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  listViewItems['title'],
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

              ],
            ),
          ),
        );
    },) ;
  }
}
