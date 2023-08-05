import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/program_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 195, 55, 99), //redish
              Color.fromARGB(255, 29, 37, 113), //blueish
            ], // You can change the colors here
            // begin: Alignment.topCenter, end: Alignment.bottomCenter,
          ),
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
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/biotech.png',
                        program_name: 'BSc (Biotech.)',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/bcom.png',
                        program_name: 'BCOM',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/medical.png',
                        program_name: 'BSc (Medical)',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/non_med.png',
                        program_name: 'BSc (Non-Medical)',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/maths.png',
                        program_name: 'BSc (Maths)',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/bms.png',
                        program_name: 'BMS',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/ba.png',
                        program_name: 'BA (General)',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug/agriculture.png',
                        program_name: 'BSc (Agri.)',
                      ),
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
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 99), //redish
                Color.fromARGB(255, 29, 37, 113), //blueish
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
