import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/ButtonWidget.dart';
import 'package:get/get.dart';

import '../AlertDialogs/DialogUtils.dart';
import '../AppTheme/AppColor.dart';
import '../AppTheme/AppTextStyle.dart';
import '../notification/LocalNotificationService.dart';
import '../widgets/EditTextWidget.dart';
import 'ChatScreen.dart';
import 'OrderListScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/delivery_boy_icon.png",
          height: 100,
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/seed/picsum/500/500'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundImage:
              NetworkImage("https://picsum.photos/seed/picsum/500/500"),
          maxRadius: 50,
        )
      ],
    );
  }

  final _formKey = GlobalKey<FormState>();

  Widget buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            const SizedBox(height: 50),
            buildTopPart(),
            const SizedBox(height: 20),
            EditTextWidget(
                textFieldController: emailController,
                hintText: "Enter email",
                obscureText: false,
                validationText: "Please enter email"),
            EditTextWidget(
                textFieldController: passwordController,
                hintText: "Enter password",
                obscureText: true,
                validationText: "Please enter password"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: ButtonWidget(
                          btnText: "Submit",
                          btnBackgroundColor: AppColor.orangeAccent,
                          btnTextColor: AppColor.textWhite,
                          textStyle: AppTextStyle.robotoMediumTextStyle,
                          btnOnPress: () {
                            if (_formKey.currentState!.validate()) {
                              //For last one screen finish

                              // Get.off(()=>ChatScreen(),
                              // duration: Duration(seconds: 1),
                              // transition: Transition.downToUp);

                              //For all previous screen finish
                              // Get.offAll(()=>ChatScreen(),
                              // duration: Duration(seconds: 1),
                              // transition: Transition.downToUp);

                              // Pass data to screen.....
                              Get.to(() => ChatScreen(),
                                  duration: Duration(seconds: 1),
                                  transition: Transition.downToUp,
                                  arguments: emailController.text +
                                      passwordController.text);
                            }
                            ;
                          })),
                  const SizedBox(width: 10),
                  Expanded(
                      child: ButtonWidget(
                          btnText: "Cancel ",
                          btnBackgroundColor: AppColor.blueColor,
                          btnTextColor: AppColor.textWhite,
                          textStyle: AppTextStyle.robotoMediumTextStyle,
                          btnOnPress: () {
                            DialogUtils.showAlertDialog(context, "Alert ",
                                "Are You sure want to OK.", "OK", () {
                              Get.back();
                              Get.back();
                            });
                          }))
                ],
              ),
            ),
          ],
        ),
        Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Forgot password..')));
                },
                child: const Text(
                  "Forgot password?",
                  style: AppTextStyle.boldTextStyle,
                  textDirection: TextDirection.ltr,
                )),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Form(
              key: _formKey,
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black12, Colors.greenAccent])),
                  child: buildLoginForm())),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: RichText(
                        text: TextSpan(
                            text: "Terms And Conditions.",
                            style: TextStyle(
                                color: AppColor.redColor,
                                fontSize: 18,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w500),
                            children: [
                          TextSpan(
                              text: " Please accept it",
                              style: TextStyle(
                                  color: AppColor.blueColor,
                                  fontSize: 16,
                                  fontFamily: 'roboto',
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: " before",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                  fontFamily: 'roboto',
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: " use this application.",
                              style: TextStyle(
                                  color: AppColor.blueColor,
                                  fontSize: 16,
                                  fontFamily: 'roboto',
                                  fontWeight: FontWeight.w500))
                        ])),
                  ),
                  ButtonWidget(
                      btnText: "Continue ",
                      btnBackgroundColor: AppColor.blueColor,
                      btnTextColor: AppColor.textWhite,
                      textStyle: AppTextStyle.robotoMediumTextStyle,
                      btnOnPress: () async {
                        // print("Cancel");
                        Get.to(OrderListScreen());
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
