// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Third_Sem extends StatefulWidget {
  const Third_Sem({super.key});

  @override
  State<Third_Sem> createState() => _Third_SemState();
}

class _Third_SemState extends State<Third_Sem> {
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
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("MCA - 3rd SEMESTER"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
           color: Color(0xFF6A8C95)
          ),
        ),
      ),
    );
  }
}
