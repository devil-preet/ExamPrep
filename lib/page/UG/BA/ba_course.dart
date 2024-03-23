import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/UG/BA/fourth_SemBA.dart';
import 'package:pup_prep/page/UG/BA/second_SemBa.dart';
import 'package:pup_prep/widgets/sem_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';
import 'package:pup_prep/widgets/wotking.dart';

class BA extends StatefulWidget {
  const BA({super.key});

  @override
  State<BA> createState() => _BAState();
}

class _BAState extends State<BA> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROGRAM - BA",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Color(0xFF6A8C95)),
        ),
      ),
      body: Container(
        height: mq.height,
        width: mq.width,
        decoration: BoxDecoration(color: Color(0xFF6A8C95)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Up_Banner(
                  labal: 'Choose your Semester',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => working()));
                  },
                  sem_name: '1st Semester',
                  image_name: 'assets/images/sem/1no.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Second_SemBA()));
                  },
                  sem_name: '2nd Semester',
                  image_name: 'assets/images/sem/2no.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => working()));
                  },
                  sem_name: '3rd Semester',
                  image_name: 'assets/images/sem/3no.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Fourth_SemBA()));
                  },
                  sem_name: '4th Semester',
                  image_name: 'assets/images/sem/4no.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => working()));
                  },
                  sem_name: '5th Semester',
                  image_name: 'assets/images/sem/5no.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => working()));
                  },
                  sem_name: '6th Semester',
                  image_name: 'assets/images/sem/6no.png',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
