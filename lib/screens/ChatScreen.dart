import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/AppTheme/AppColor.dart';
import 'package:flutter_ui/widgets/CustomAppBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'ChatPage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  Widget bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap: onItemTapped,
      selectedItemColor: AppColor.blueColor,
      unselectedItemColor: AppColor.blackWhite,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_add),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Chats",
        )
      ],
    );
  }

  int _selectedItem=0;

  void onItemTapped(int index) {
    setState((){
      _selectedItem = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar.toolBar(Get.arguments, context),
      body:const ChatPage(),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
