import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({Key? key, this.controller, this.hintText})
      : super(key: key);
  final TextEditingController? controller;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(11.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF00ebe7f)),
              borderRadius: BorderRadius.circular(25)),
          hintText: hintText,
        ),
      ),
    );
  }
}
