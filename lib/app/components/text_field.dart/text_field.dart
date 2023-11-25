import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({Key? key, this.controller, this.hintText, this.suffixIcon, this.hintStyle})
      : super(key: key);
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00ebe7f)),
            borderRadius: BorderRadius.circular(15)),
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon
      ),
    );
  }
}
