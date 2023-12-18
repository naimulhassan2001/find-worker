
import 'package:find_worker/controller/notification_controller.dart';
import 'package:find_worker/utils/app_string.dart';
import 'package:find_worker/view/screen/notification/notification_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  NotificationController notificationController = Get.put(NotificationController()) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.notification),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: ListView.builder(
          itemCount: notificationController.notificationList.length,
            itemBuilder: (context, index) {
            var item = notificationController.notificationList[index] ;
              return NotificationListItem(title: item['title'], time: item['time'],) ;

            },
        ),
      ),
    );
  }
}
