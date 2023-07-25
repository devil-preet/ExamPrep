import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pup_prep/page/OTHERS/Other_courses.dart';
import 'package:pup_prep/page/UG/UG_page.dart';

import 'PG/PG_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarColor:
              Color.fromARGB(255, 3, 45, 59) // Use any color
          ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 66, 85),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 45, 59),
          title: const Text("CHOOSE YOUR COURSE TYPE ")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => UnderGrad()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 45, 59)),
                child: const Text(
                  "UG-COURSES",
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PostGrad()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 45, 59)),
                child: const Text(
                  "PG-COURSES",
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtherCourses()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 45, 59)),
                child: const Text(
                  "OTHER-COURSES",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
