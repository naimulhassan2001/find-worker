


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {

  TextEditingController fullNameController = TextEditingController() ;
  TextEditingController dateController = TextEditingController() ;
  TextEditingController monthController = TextEditingController() ;
  TextEditingController yearController = TextEditingController() ;

  RxBool radioValue = false.obs ;
  RxString radioGroup = "".obs ;



}