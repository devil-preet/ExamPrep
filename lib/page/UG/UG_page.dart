import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
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
                  labal: 'Scroll right to browse',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Program_Tile(
                          imageName: 'assets/images/ug/bca.png',
                          program_name: 'BCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => BCA()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/bba.png',
                          program_name: 'BBA',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/biotech.png',
                          program_name: 'BSc (Biotech.)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/bcom.png',
                          program_name: 'BCOM',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/medical.png',
                          program_name: 'BSc (Medical)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/non_med.png',
                          program_name: 'BSc (Non-Medical)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/maths.png',
                          program_name: 'BSc (Maths)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/bms.png',
                          program_name: 'BMS',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/ba.png',
                          program_name: 'BA (General)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/ug/agriculture.png',
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
          decoration: BoxDecoration(
             color: Color(0xFF6A8C95)
          ),
        ),
      ),
    );
  }
}
