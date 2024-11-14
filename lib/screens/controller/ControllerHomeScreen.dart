import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerHomeScreen extends GetxController with GetTickerProviderStateMixin  {
  var followers = "000".obs;

  TabController? tab1Controller;

  void updateFollowers(String mfollowers) {
    followers.value = mfollowers;
  //  update();
  }

  @override
  void onInit() {
    super.onInit();

    getTabController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  TabController getTabController() {
     return tab1Controller = TabController(
        vsync: this,
        length: 3,
        initialIndex: 0);
  }

}