import 'package:find_worker/view/screen/history_screen.dart';
import 'package:find_worker/view/screen/home_screen/home_screen.dart';
import 'package:find_worker/view/screen/job%20details/job_details_screen.dart';
import 'package:find_worker/view/screen/notification/notification_screen.dart';
import 'package:find_worker/view/screen/setting%20Screen/setting_screen.dart';
import 'package:find_worker/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screen/home_screen/home_widgets/bottom_nav_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

        home: BottomNavBar(),
        // home: JobDetailsScreen(name: "name", phone: "phone", address: "address", service: "service", status: "status", time: "time", date: "date")


    );
  }
}
