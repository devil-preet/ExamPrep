import 'package:flutter/material.dart';

class Up_Banner extends StatelessWidget {
  Up_Banner({
    super.key,
    required this.labal,
    this.height,
    this.width,
  });
  String labal;
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 245, 153, 153),
              const Color.fromARGB(255, 174, 12, 0)
            ]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Center(
          child: Text(
            labal,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}