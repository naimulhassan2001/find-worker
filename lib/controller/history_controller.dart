

import 'package:get/get.dart';

import '../utils/app_image.dart';
import '../utils/app_string.dart';
import '../view/widgets/history_list_item.dart';

class HistoryController extends GetxController {

  RxList historyList = [
    {
      "name" : AppString.john,
      "image" : AppImage.john,
      "status" : AppString.complete,
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },
    {
      "name" : AppString.john,
      "image" : AppImage.john,
      "status" : AppString.complete,
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },
    {
      "name" : AppString.john,
      "image" : AppImage.john,
      "status" : AppString.complete,
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },
    {
      "name" : AppString.john,
      "image" : AppImage.john,
      "status" : AppString.complete,
      "date" : "12-sept",
      "time" : "12:00AM",
      "address" : "Abu Dhabi",
      "service" : AppString.carWash,
      "phone" : "+44 12344 1234",
    },



  ].obs ;


}