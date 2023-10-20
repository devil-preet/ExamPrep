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
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(100),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: mq.width,
            height: mq.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
             color: Colors.white,
            ),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 60,
                height: mq.height * 0.040,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image_name)),
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(
                width: 30,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 5,
                  height: mq.height * 0.06,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 233),
                      // stops: [0.01, 2.0]),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                sem_name,
                style: TextStyle(
                    fontSize: 22, color: Colors.black, fontFamily: 'font1'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
