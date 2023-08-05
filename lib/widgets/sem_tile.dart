import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Semester_tile extends StatelessWidget {
  Semester_tile({
    super.key,
    required this.image_name,
    required this.sem_name,
    required this.onTap,
  });
  String image_name;
  String sem_name;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: mq.width,
          height: mq.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
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
                  Color.fromARGB(255, 29, 37, 113), //blueish
                  Color.fromARGB(255, 195, 55, 99), //redish
                ],
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  1.0
                ]),
          ),
          child: Row(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 60,
              height: mq.height * 0.07,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image_name)),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: 5,
              height: mq.height * 0.07,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 195, 55, 99),
                      Color.fromARGB(255, 29, 37, 113),

                      Color.fromARGB(255, 195, 55, 99), //redish
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  // stops: [0.01, 2.0]),
                  borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              sem_name,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'font1'),
            )
          ]),
        ),
      ),
    );
  }
}
