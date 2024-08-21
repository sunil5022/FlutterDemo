

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/ChatScreen.dart';



class Navigation {

  // static void finishLastScreens() {
  //   Get.offAll(()=>route,
  //       duration: Duration(seconds: durationInSec),
  //       transition: Transition.downToUp);
  // }

   finishAllScreens() {
     Get.offAll(()=>ChatScreen(),
         duration: Duration(seconds: 1),
         transition: Transition.downToUp);
   }

}