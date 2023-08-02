import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/OTHERS/Other_courses.dart';
import 'package:pup_prep/page/PG/PG_page.dart';
import 'package:pup_prep/page/UG/UG_page.dart';
import 'package:pup_prep/widgets/course_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF394348),
      appBar: AppBar(
          backgroundColor: Color(0xFF394348),
          title: Text(
            "CHOOSE YOUR COURSE LEVEL ",
            style: TextStyle(color: Colors.white),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Up_Banner(
                labal: 'COURSES',
                width: mq.width * 0.6,
                height: mq.height * 0.06,
              ),
              Courses_Tile(
                  imageName: "assets/images/ug.png",
                  btext: 'click here',
                  cours_text: "Under Graduation",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UnderGrad()));
                  }),
              Courses_Tile(
                  imageName: "assets/images/pg.png",
                  btext: 'click here',
                  cours_text: "Post Graduation",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostGrad()));
                  }),
              Up_Banner(
                labal: 'OTHER COURSES',
                width: mq.width * 0.6,
                height: mq.height * 0.06,
              ),
              Courses_Tile(
                  imageName: "assets/images/other.png",
                  btext: 'click here',
                  cours_text: "PGDCA",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtherCourses()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
