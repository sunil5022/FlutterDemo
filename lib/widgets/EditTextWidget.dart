import 'package:flutter/material.dart';

class EditTextWidget extends StatelessWidget {

  final String hintText;
  final String validationText;
  final TextEditingController textFieldController;
  bool obscureText=false;
  EditTextWidget({super.key, required this.hintText,required this.obscureText,required this.validationText,required this.textFieldController});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
        controller: textFieldController,
        obscureText: obscureText,
        validator: (value){
          if(value!.isEmpty || value==null){
            return validationText;
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0)
          )

        )


      ),
    );
  }
}
