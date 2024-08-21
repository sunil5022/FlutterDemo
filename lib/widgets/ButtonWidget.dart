import 'package:flutter/material.dart';

import '../AppTheme/AppTextStyle.dart';

class ButtonWidget extends StatelessWidget {
  final String btnText;
  final Color btnBackgroundColor;
  final Color btnTextColor;
  final VoidCallback btnOnPress;
  final TextStyle textStyle;

  const ButtonWidget(
      {super.key,
      required this.btnText,
      required this.btnBackgroundColor,
      required this.btnTextColor,
      required this.textStyle,
      required this.btnOnPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnOnPress,
      style: ElevatedButton.styleFrom(
          primary: btnBackgroundColor,
          onPrimary: btnTextColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      child: Text(btnText,
          style: textStyle,
    )
    );
  }
}
