import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // Use a BoxDecoration to create a gradient color
        systemNavigationBarColor: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 195, 55, 99), //redish
            Color.fromARGB(255, 29, 37, 113),
          ] //blueish,
              ),
        ).color,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CHOOSE YOUR COURSE LEVEL",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 99),
                Color.fromARGB(255, 29, 37, 113),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: mq.height,
        width: mq.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 195, 55, 99),
              Color.fromARGB(255, 29, 37, 113),
            ],
          ),
        ),
        child: SafeArea(
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
                    imageName: "assets/images/ug1.png",
                    btext: 'Click here',
                    cours_text: "Under Graduation",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UnderGrad()));
                    }),
                Courses_Tile(
                    imageName: "assets/images/pg.png",
                    btext: 'Click here',
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
                    btext: 'Click here',
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
      ),
    );
  }
}
