import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/UG/BA/ba_course.dart';
import 'package:pup_prep/widgets/program_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';
import 'package:pup_prep/widgets/wotking.dart';

import 'BCA/bca_course.dart';

class UnderGrad extends StatefulWidget {
  const UnderGrad({super.key});

  @override
  State<UnderGrad> createState() => _UnderGradState();
}

class _UnderGradState extends State<UnderGrad> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mq.height,
        width: mq.width,
        decoration: BoxDecoration(
          color: Color(0xFF6A8C95),
        ),
        // ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Up_Banner(
                  labal: 'Scroll down to browse',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fbca.png?alt=media&token=5cd512dd-5e5e-41ca-8bd6-b5c61ddca080',
                          program_name: 'BCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => BCA()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fba.png?alt=media&token=703f919b-adca-430f-b584-7aaff162bb07',
                          program_name: 'BA (General)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BA()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fbba.png?alt=media&token=18199037-e78c-451a-a278-1b6157f63f68',
                          program_name: 'BBA',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fbiotech.png?alt=media&token=0788b5ce-f59f-4716-a1c5-b1786a3b9c23',
                          program_name: 'BSc (Biotech.)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fbcom.png?alt=media&token=fb460dec-0777-431b-b1ea-d5ac98f767a7',
                          program_name: 'BCOM',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fmedical.png?alt=media&token=cbde5b31-50a8-4d96-907c-23cf451e4857',
                          program_name: 'BSc (Medical)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fnon_med.png?alt=media&token=e0cd21ab-0aea-4783-a3d7-fe1702d66a6b',
                          program_name: 'BSc (Non-Medical)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fnon_med.png?alt=media&token=e0cd21ab-0aea-4783-a3d7-fe1702d66a6b',
                          program_name: 'BSc (Maths)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fbms.png?alt=media&token=abd824d3-623e-469c-bd19-5d21a1061905',
                          program_name: 'BMS',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName:
                              'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fagriculture.png?alt=media&token=d314e4b6-aa65-447a-8c08-ffc630ac59f7',
                          program_name: 'BSc (Agri.)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CHOOSE YOUR PROGRAM",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Color(0xFF6A8C95)),
        ),
      ),
    );
  }
}
