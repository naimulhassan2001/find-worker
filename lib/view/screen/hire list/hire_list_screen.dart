

import 'package:find_worker/controller/hire_list_controller.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/hire%20list/hire_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../job details/job_details_screen.dart';

class HireListScreen extends StatelessWidget {
  HireListScreen({super.key});

  HireListController hireListController = Get.put(HireListController()) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.hireList),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: ListView.builder(
          itemCount: hireListController.hireList.length,
          itemBuilder: (context, index) {
            var item = hireListController.hireList[index];
            var name = item['name'];
            var image = item['image'];
            var status = item['status'];
            var date = item['date'];
            var address = item['address'];
            var phone = item['phone'];
            var service = item['service'];
            var time = item['time'];
            return GestureDetector(
              onTap: () {
                Get.to(JobDetailScreen(
                  title: AppString.hireDetails,
                    name: name,
                    phone: phone,
                    address: address,
                    service: service,
                    status: status,
                    time: time,
                    date: date,
                  buttonColors: const Color(0xFFFFF8E6),
                  textColors: const Color(0xFFFFB701),
                ));
              },
              child: HireListItem(
                name: name,
                image: image,
                status: status,
                date: date,
                address: address,
                phone: phone,
                service: service,
                time: time,
              ),
            );
          },
        ),
      ),
    );
  }
}
