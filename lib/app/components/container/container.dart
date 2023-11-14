import 'package:flutter/material.dart';

class Container_widget extends StatelessWidget {
  const Container_widget({
    super.key,
    this.text, this.onTap,
  });
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        
      
      child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Container(
            width: 295,
            height: 59,
            decoration: BoxDecoration(
                color: Color(0xFF0ebe7f),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              '$text',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )),
          )),
    );
  }
}
