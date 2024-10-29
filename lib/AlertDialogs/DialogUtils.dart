
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtils {

 static void showAlertDialog(BuildContext context,String title,String bodyMessage,String btnText,VoidCallback btnOnPress
 ) {

   // set up the button
   Widget okButton = TextButton(
     child: Text(btnText),
     onPressed: btnOnPress,
   );

   // set up the AlertDialog
   AlertDialog alert = AlertDialog(
     title: Text(title),
     content: Text(bodyMessage),
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
 }}