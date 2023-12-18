import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/categories_controller.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  CategoriesController categoriesController = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0668E3),
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: categoriesController.gridViewItemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisExtent: 130),
          itemBuilder: (context, index) {
            var gridViewItems = categoriesController.gridViewItemList[index];
            return Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFF6AA4EE)),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          gridViewItems['image'],
                          width: 50,
                          height: 50,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  gridViewItems['title'],
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            );
          }),
    );
  }
}
