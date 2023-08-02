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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.purple
            ], // You can change the colors here
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
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
                          imageName: 'assets/images/login2.png',
                          program_name: 'BCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => BCA()));
                          }),
                      Program_Tile(
                        imageName: 'assets/images/other.png',
                        program_name: 'BA',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug.png',
                        program_name: 'BTECH',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/pg.png',
                        program_name: 'BCOM',
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
        backgroundColor: Color(0xFF394348),
        title: Text(
          "CHOOSE YOUR PROGRAM",
        ),
      ),
    );
  }
}
