

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    required this.borderRadius,
    required this.borderColor,
    required this.borderWidth,
    required this.isPassword,
    required this.textEditingController,
    required this.enableBorderWidth,
    required this.keyBoardType,
    required this.onTapfunction,
  });

  String hintText;
  double borderRadius;
  Color borderColor;
  double borderWidth;
  double enableBorderWidth;
  bool isPassword;
  VoidCallback onTapfunction;
  TextInputType keyBoardType;
  TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      controller: textEditingController,
      keyboardType: keyBoardType,
      onTap: onTapfunction,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(width: borderWidth, color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(width: enableBorderWidth, color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(width: borderWidth, color: Colors.redAccent),
        ),
      ),
    );
  }
}
