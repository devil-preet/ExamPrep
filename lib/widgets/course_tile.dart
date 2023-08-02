import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Courses_Tile extends StatelessWidget {
  Courses_Tile({
    super.key,
    required this.btext,
    required this.onTap,
    this.imageName,
    required this.cours_text,
  });
  String? imageName;
  String cours_text;
  Function() onTap;
  String btext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: mq.width,
        height: mq.height * 0.25,
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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
              width: mq.width * 0.32,
              height: mq.height * 0.15,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage(imageName.toString())),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              height: mq.height * 0.20,
              width: mq.width * 0.009,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [
                      Color(0xFF243239),
                      const Color.fromARGB(255, 93, 110, 118),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.01, 2.0]),
              ),
            ),
            SizedBox(
              width: mq.width * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  cours_text,
                  maxLines: 2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 253, 249, 233),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   "Paper",
                //   maxLines: 2,
                //   style: TextStyle(
                //     color: Color.fromARGB(255, 253, 249, 233),
                //     fontSize: 22,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFF0F0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        btext,
                        style: TextStyle(
                            color: Color(0xFF243239),
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
