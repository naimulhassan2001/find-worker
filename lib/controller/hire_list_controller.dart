

import 'package:get/get.dart';

import '../utils/app_image.dart';
import '../utils/app_string.dart';

class HireListController extends GetxController {

  RxList hireList = [
    {
      "name" : AppString.john,
      "image" : AppImage.johnD,
      "status" : "Pending",
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },
    {
      "name" : AppString.john,
      "image" : AppImage.johnDo,
      "status" : "Pending",
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },
    {
      "name" : AppString.john,
      "image" : AppImage.johnDo,
      "status" : "Pending",
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },




  ].obs ;


}