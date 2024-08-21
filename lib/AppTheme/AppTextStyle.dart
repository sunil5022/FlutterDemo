import 'dart:ui';
import 'package:flutter/material.dart';

import 'AppColor.dart';

class AppTextStyle{
  static const TextStyle boldTextStyle=TextStyle(
    color: AppColor.blueColor,fontSize: 18,fontFamily: 'bebas', fontWeight: FontWeight.w500
  );

  static const TextStyle robotoMediumTextStyle=TextStyle(
    color: AppColor.textWhite,fontSize: 16,fontFamily: 'roboto', fontWeight: FontWeight.w500
  );

  static const TextStyle robotoMediumTextStyle2=TextStyle(
    color: AppColor.redColor,fontSize: 16,fontFamily: 'roboto', fontWeight: FontWeight.w500
  );

  static const TextStyle nameOfTextStyle = TextStyle(
    fontSize: 24,
    color: Colors.green,
    fontWeight: FontWeight.bold,
  );
}