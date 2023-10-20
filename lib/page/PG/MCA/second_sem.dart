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
      body: SafeArea(
        // backgroundColor: Color(0xFF394348),

        child: Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
          color: Color(0xFF6A8C95)
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
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("MCA - 2nd SEMESTER"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFF6A8C95)
          ),
        ),
      ),
    );
  }
}
