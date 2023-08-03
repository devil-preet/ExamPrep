import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/UG/BCA/fifth_sem.dart';
import 'package:pup_prep/page/UG/BCA/first_sem.dart';
import 'package:pup_prep/page/UG/BCA/fourth_sem.dart';
import 'package:pup_prep/page/UG/BCA/second_sem.dart';
import 'package:pup_prep/page/UG/BCA/sixth_sem.dart';
import 'package:pup_prep/page/UG/BCA/third_sem.dart';
import 'package:pup_prep/widgets/sem_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

class BCA extends StatefulWidget {
  const BCA({super.key});

  @override
  State<BCA> createState() => _BCAState();
}

class _BCAState extends State<BCA> {
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
                Up_Banner(
                  labal: 'Choose your Semester',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
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
                  height: 20,
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
                  height: 20,
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
                  height: 20,
                ),
                Semester_tile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fourth_Sem()));
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
                        MaterialPageRoute(builder: (context) => Fifth_Sem()));
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
                        MaterialPageRoute(builder: (context) => Sixth_Sem()));
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
      appBar: AppBar(
        centerTitle: true,
        title: Text("PROGRAM - BCA"),
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
