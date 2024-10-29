
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui/AppTheme/AppColor.dart';
import 'package:flutter_ui/AppTheme/AppTextStyle.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:get/get.dart';

import '../AlertDialogs/DialogUtils.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // late File _image;
  // final picker = ImagePicker();
  //
  // //Image Picker function to get image from gallery
  // Future getImageFromGallery() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _image = File(pickedFile.path);
  //     }
  //   });
  // }
  //
  // //Image Picker function to get image from camera
  // Future getImageFromCamera() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.camera);
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _image = File(pickedFile.path);
  //     }
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Conversations",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[50],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: AppColor.pinkColor, size: 20),
                      Text("Add New",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
          )),
          searchView(),
          chatListView()
          // chatListView(getImageFromCamera())
        ],
      ),
    );
  }
}

Widget chatListView() {
  return Expanded(
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        // new
        primary: false,
        shrinkWrap: true,
        itemCount: 18,
        itemBuilder: (context, position) {
          return InkWell(
            onTap: ()=>DialogUtils.showAlertDialog(context,"Chat ","Description..","OK",(){
              Get.to(Home());
            }),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://picsum.photos/seed/picsum/20/20"),
                              maxRadius: 25,
                            ),
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Sunil ",
                                        style: AppTextStyle.robotoMediumTextStyle2,
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.start,
                                      ),

                                    ],
                                  ),
                                ),
                                Text(
                                  "How are you?",
                                  style: AppTextStyle.boldTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "1:03 PM ",
                          style: AppTextStyle.robotoMediumTextStyle2,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ));
}

Widget searchView() {
  return Container(
    padding: EdgeInsets.only(left: 16, right: 16, top: 2, bottom: 2),
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade100),
    child: Row(
      children: [
        Icon(Icons.search, color: Colors.grey, size: 20),
        SizedBox(width: 5),
        Text("Search..",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600))
      ],
    ),
  );  }

showAlertDialog(BuildContext context,String name) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {  Navigator.of(context).pop();  },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(name),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
