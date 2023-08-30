// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Second_Sem extends StatefulWidget {
  const Second_Sem({super.key});

  @override
  State<Second_Sem> createState() => _Second_SemState();
}

class _Second_SemState extends State<Second_Sem> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 2nd SEMESTER",
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
      body: SafeArea(
        child: Container(
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
                  title: 'General English-2',
                  image_name: 'assets/images/technical/eng.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Basic Maths',
                  image_name: 'assets/images/technical/math1.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Data Structures',
                  image_name: 'assets/images/technical/dsa.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Digital Electronics',
                  image_name: 'assets/images/technical/de.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Drug Abuse',
                  onTap: () {},
                  image_name: 'assets/images/technical/drug.png',
                ),
                Subject_tile(
                  title: 'Punjabi',
                  image_name: 'assets/images/technical/pub.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name: 'assets/images/technical/pbi.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
