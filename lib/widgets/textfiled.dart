import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class CTextFiled extends StatelessWidget {
   CTextFiled({
    this.prefixIcon,
    this.controller,
    this.hintText,
    super.key,
  });
Widget? prefixIcon;
TextEditingController? controller;
String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: mq.width * 0.9,
      height: mq.height * 0.07,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: prefixIcon,
                prefixStyle: TextStyle(color: Color(0xFFED6258),),
                border: InputBorder.none
              ),
            ),
          ),
    );
  }
}