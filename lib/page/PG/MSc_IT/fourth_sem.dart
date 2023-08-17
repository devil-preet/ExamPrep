// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../api_pdf/pdf_api.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Fourth_Sem extends StatefulWidget {
  const Fourth_Sem({super.key});

  @override
  State<Fourth_Sem> createState() => _Fourth_SemState();
}

class _Fourth_SemState extends State<Fourth_Sem> {
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
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 99),
                Color.fromARGB(255, 29, 37, 113),
              ], // You can change the colors here
              // begin: Alignment.topCenter, end: Alignment.bottomCenter,
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
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Msc (IT) - 4TH SEMESTER"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 99),
                Color.fromARGB(255, 29, 37, 113),
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
