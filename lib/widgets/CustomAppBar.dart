
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar{

  static AppBar toolBar(String title,BuildContext context){
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new,color: Colors.blue), onPressed: () { Get.back(); },
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
    );
  }

  static AppBar toolBarForOrderList(String title,BuildContext context){
    return AppBar(
      title: Text(title,style: const TextStyle(fontSize: 15)),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new,color: Colors.red,semanticLabel: "0:40",), onPressed: () { Get.back(); },

      ),
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.refresh,color: Colors.green,)),
      ],
      // bottom: TabBar(
      //   tabs: [
      //     Tab(icon: Icon(Icons.home)),
      //     Tab(icon: Icon(Icons.music_video)),
      //   ],
      //   labelStyle: const TextStyle(
      //       color: Colors.black,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600),
      //
      //   unselectedLabelColor: Colors.grey,
      //
      //   splashBorderRadius: BorderRadius.circular(20),
      //
      // ),
    );
  }
}