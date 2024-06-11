import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, 
  required this.inputType,
  required this.hintText,
  required this.obscureText});

  String? hintText;
  TextInputType? inputType;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        obscureText: obscureText!,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintText,

          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(), 
              borderRadius: BorderRadius.circular(50)),

          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
          // onSaved: (val){
  
          // },
        validator: (value) {
          if (value!.isEmpty){
            return "empty val";
          }
          return null;
        },
      ),
    );
  }
}
