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
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'CONSM (Maths)',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fmath2.png?alt=media&token=885576c1-8bf0-47de-bafe-e13ead130d66',
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
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fmis.png?alt=media&token=a392e8cb-cb33-44ea-8a3f-ed4622e3f35b',
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
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fcn.png?alt=media&token=21b85bea-34f8-42f4-bd24-6e6126617dbc',
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
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fdbms.png?alt=media&token=cc434233-0b0d-4f17-b852-f767937b641d',
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
