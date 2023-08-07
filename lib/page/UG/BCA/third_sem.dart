// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';

import '../../../api_pdf/pdf_api.dart';
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
                  title: 'English Communi-\ncation Skills-1',
                  image_name: 'assets/images/technical/engc.png',
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
                  image_name: 'assets/images/technical/math2.png',
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
                  image_name: 'assets/images/technical/csa.png',
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
                  image_name: 'assets/images/technical/evs.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'DBMS',
                  image_name: 'assets/images/technical/dbms.png',
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
                  image_name: 'assets/images/technical/cpp.png',
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
