import 'package:find_worker/controller/history_controller.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/job%20details/job_details_screen.dart';
import 'package:find_worker/view/widgets/history_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  HistoryController historyController = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.history),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: ListView.builder(
          itemCount: historyController.historyList.length,
          itemBuilder: (context, index) {
            var item = historyController.historyList[index];
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
                  title: AppString.jobDetails,
                    name: name,
                    phone: phone,
                    address: address,
                    service: service,
                    status: status,
                    time: time,
                    date: date));
              },
              child: HistoryListItem(
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
