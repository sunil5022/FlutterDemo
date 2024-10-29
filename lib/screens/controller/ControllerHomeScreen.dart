import 'package:get/get.dart';

class ControllerHomeScreen extends GetxController {
  var followers = "000".obs;

  void updateFollowers(String mfollowers) {
    followers.value = mfollowers;
  //  update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}