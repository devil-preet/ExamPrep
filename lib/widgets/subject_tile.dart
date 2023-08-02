import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Subject_tile extends StatelessWidget {
   Subject_tile({
    super.key,
   required this.onTap,
   required this.image_name,
   required this.title,
   required this.title2,
  });
Function() onTap;
String image_name;
String title;
String title2;
  @override
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;
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
                  const Color.fromARGB(255, 93, 110, 118),
                  Color(0xFF243239),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.01, 2.0]),
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
                      image: DecorationImage(
                          image: AssetImage(
                              image_name))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      title2,
                      style:
                          TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Click To Get',
                    style: TextStyle(color: Colors.red, fontSize: 20),
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