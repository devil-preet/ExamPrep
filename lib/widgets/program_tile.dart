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
        width: mq.width,
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
                  const Color.fromARGB(255, 93, 110, 118),
                  Color(0xFF243239),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.01, 2.0]),
                ),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50,top: 20),
                child: Container(
                  width: mq.width * 0.6,
                  height: mq.height * 0.28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              imageName.toString()))),
                ),
              ),
              Text(
                program_name,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Get all sem ${program_name.toLowerCase()} paper',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  // fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 160,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF0F0),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,color: Colors.red,size: 45,),
                      SizedBox(width: 10,),
                      Text(
                        'Get Paper',
                        style: TextStyle(
                            color: Colors.red, fontSize: 18,fontWeight: FontWeight.bold),
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