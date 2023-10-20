import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/subject_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

class First_Sem extends StatefulWidget {
  const First_Sem({super.key});

  @override
  State<First_Sem> createState() => _First_SemState();
}

class _First_SemState extends State<First_Sem> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mq.height,
          width: mq.width,
          color: Color(0xFF6A8C95),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Up_Banner(
                  labal: 'Choose Subject',
                  width: mq.width * 0.7,
                  height: mq.height * 0.06,
                ),
                Subject_tile(
                  title: 'COA',
                  image_name: 'assets/images/technical/csa.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Data Structures & \nAlgorithms',
                  image_name: 'assets/images/technical/dsa.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'OOps using C++',
                  image_name: 'assets/images/technical/cpp.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Statistics and\nProbability',
                  image_name: 'assets/images/technical/math2.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("MCA - 1st SEMESTER"),
        flexibleSpace: Container(
          color: Color(0xFF6A8C95),
        ),
      ),
    );
  }
}
