import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Subject_tile extends StatelessWidget {
  Subject_tile({
    super.key,
    required this.onTap,
    required this.image_name,
    required this.title,
    // required this.title2,
  });
  Function() onTap;
  String image_name;
  String title;
  // String title2;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        width: mq.width,
        height: mq.height * 0.23,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000),
                offset: Offset(6.0, 6.0),
                spreadRadius: 2.0,
                blurRadius: 10.0,
              ),
            ],
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 195, 55, 99), //redish
                  Color.fromARGB(255, 29, 37, 113), //blueish
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 6.0]),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: mq.width * 0.3,
                  height: mq.height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image_name))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'font1'),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 90),
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Click To Get',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 15,
                        fontFamily: 'font1'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
