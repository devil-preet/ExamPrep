import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 1st SEMESTER",
          style: TextStyle(fontFamily: 'font1'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFF6A8C95),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
            color: Color(0xFF6A8C95),
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
                  title: 'General English-1',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'GENERAL ENGLISH')));
                  },
                ),
                Subject_tile(
                  title: 'Fundamentals of IT',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2FIT.png?alt=media&token=a023a0b8-265d-4085-a5ff-bc082d37527b',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'it-sem1')));
                  },
                ),
                Subject_tile(
                  title: 'Office Automation',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2FOA2.png?alt=media&token=438d3cce-f50b-4ba4-8c41-528515708f87',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'oa-sem1')));
                  },
                ),
                Subject_tile(
                  title: 'Programming Funda-\nmentals Using C',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2FC.png?alt=media&token=ec76ffe6-3bcd-4087-bd21-793853a28761',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'c-sem1')));
                  },
                ),
                Subject_tile(
                  title: 'Punjabi',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpub.png?alt=media&token=40f1e69d-cb9c-4f10-8db4-b6e2bbacc454',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'Punjabi')));
                  },
                ),
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpbi.png?alt=media&token=c0cad45e-ae09-4ee0-952d-073a3dba57cb',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem1',
                                filename: 'PUNJABI MUDLA GYAN')));
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
