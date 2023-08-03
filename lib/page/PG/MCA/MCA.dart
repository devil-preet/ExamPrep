import 'package:flutter/material.dart';
import 'package:pup_prep/widgets/sem_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';
import 'package:pup_prep/page/PG/MCA/first_sem.dart';
import 'package:pup_prep/page/PG/MCA/second_sem.dart';
import 'package:pup_prep/page/PG/MCA/third_sem.dart';
import 'package:pup_prep/page/PG/MCA/fourth_sem.dart';

import '../../../main.dart';

class MCA extends StatefulWidget {
  const MCA({super.key});

  @override
  State<MCA> createState() => _MCAState();
}

class _MCAState extends State<MCA> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mq.height,
        width: mq.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.purple
            ], // You can change the colors here
            // begin: Alignment.topCenter, end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Up_Banner(
                  labal: 'Choose your Semester',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
                ),
                SizedBox(
                  height: 30,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => First_Sem()));
                  },
                  sem_name: '1st Semester',
                  image_name: 'assets/images/sem/1no.png',
                ),
                SizedBox(
                  height: 30,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Second_Sem()));
                  },
                  sem_name: '2nd Semester',
                  image_name: 'assets/images/sem/2no.png',
                ),
                SizedBox(
                  height: 30,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Third_Sem()));
                  },
                  sem_name: '3rd Semester',
                  image_name: 'assets/images/sem/3no.png',
                ),
                SizedBox(
                  height: 30,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fourth_Sem()));
                  },
                  sem_name: '4th Semester',
                  image_name: 'assets/images/sem/4no.png',
                ),
                // SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("PROGRAM - MCA"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple
              ], // You can change the colors here
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
