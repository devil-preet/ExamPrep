// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 3rd SEMESTER",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
          color: Color(0xFF6A8C95),
        ),
      ),
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
                  title: 'English Communi-\ncation Skills-1',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fengc.png?alt=media&token=56882483-7b20-4ca0-88b1-c1d068483df8',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'english-sem3')));
                  },
                ),
                Subject_tile(
                  title: 'Descrete Maths',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fmath2.png?alt=media&token=885576c1-8bf0-47de-bafe-e13ead130d66',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'math-sem3')));
                  },
                ),
                Subject_tile(
                  title: 'CSOA',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fcsa.png?alt=media&token=fc6cffa7-3edc-413a-90a5-10c3b44838a8',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'csoa-sem3')));
                  },
                ),
                Subject_tile(
                  title: 'EVS',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fevs.png?alt=media&token=7d06ba91-ac14-4399-8a20-11185e49e988',
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'EVS')));
                  },
                ),
                Subject_tile(
                  title: 'DBMS',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fdbms1.png?alt=media&token=ee38ae7b-1087-4027-8fd0-e03a9389acb0',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'dbms-sem3')));
                  },
                ),
                Subject_tile(
                  title: 'OOPs uing C++',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fcpp.png?alt=media&token=7345b158-6747-4a98-9b08-24b3aed83e39',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem3',
                                filename: 'c++-sem3')));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
