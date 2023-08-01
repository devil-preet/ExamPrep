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
      backgroundColor: Color(0xFF394348),
      appBar: AppBar(
        backgroundColor: Color(0xFF394348),
        title: Text(
          "PROGRAM",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Up_Banner(
                labal: 'Get All Program Paper',
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
                      program_name: 'MCA',
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
    );
  }
}


