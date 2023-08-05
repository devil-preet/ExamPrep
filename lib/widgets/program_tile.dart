import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Program_Tile extends StatelessWidget {
  Program_Tile({
    super.key,
    this.imageName,
    this.onTap,
    required this.program_name,
  });
  String? imageName;
  String program_name;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: mq.width * 0.95,
        height: mq.height * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
                Color.fromARGB(255, 195, 55, 99),
                Color.fromARGB(255, 29, 37, 113),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 3.0]),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: 20),
                child: Container(
                  width: mq.width * 0.6,
                  height: mq.height * 0.28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageName.toString()))),
                ),
              ),
              Text(
                program_name,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'font1'),
              ),
              SizedBox(
                height: 15,
              ),
              // Text(
              //   'Get previous year question-papers of ${program_name.toLowerCase()}',
              //   style: TextStyle(
              //       fontSize: 15,
              //       color: Colors.white,
              //       fontWeight: FontWeight.w500,
              //       fontFamily: 'font1'),
              // ),
              // SizedBox(
              //   height: 25,
              // ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 200,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.blue.shade900,
                        size: 25,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Choose semester',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'font1'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
