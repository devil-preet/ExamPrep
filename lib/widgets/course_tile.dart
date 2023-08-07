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
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(35),
        child: Container(
          width: mq.width,
          height: mq.height * 0.20,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFC33763), //redish
                    Color(0xFF1D2571), //blueish
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.01, 2.0]),
              borderRadius: BorderRadius.circular(35)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                width: mq.width * 0.32,
                height: mq.height * 0.15,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(imageName.toString())),
                    borderRadius: BorderRadius.circular(100)),
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: mq.height * 0.15,
                  width: mq.width * 0.009,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 255, 233)),
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
                        fontSize: 20,
                        fontFamily: 'font1'),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF0F0),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            btext,
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'font2'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
