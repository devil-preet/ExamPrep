// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 4TH SEMESTER",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
         color: Color(0xFF6A8C95)
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
                  title: 'English Communi-\ncation Skills-2',
                  image_name: 'assets/images/technical/eng.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'CONSM (Maths)',
                  image_name: 'assets/images/technical/math2.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem4',
                                filename: 'COS math')));
                  },
                ),
                Subject_tile(
                  title: 'Management Infor-\nmation System',
                  image_name: 'assets/images/technical/mis.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem4', filename: 'MIS')));
                  },
                ),
                Subject_tile(
                  title: 'Computer Natworks',
                  image_name: 'assets/images/technical/cn.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem4', filename: 'CN')));
                  },
                ),
                Subject_tile(
                  title: 'RDBMS',
                  image_name: 'assets/images/technical/dbms.png',
                  onTap: () {},
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
