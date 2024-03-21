// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Sixth_Sem extends StatefulWidget {
  const Sixth_Sem({super.key});

  @override
  State<Sixth_Sem> createState() => _Sixth_SemState();
}

class _Sixth_SemState extends State<Sixth_Sem> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 6TH SEMESTER",
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
                  title: 'English Litrary \nSkills-2',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem6', filename: 'Eng')));
                  },
                ),
                Subject_tile(
                  title: 'E-Commerce',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fec.png?alt=media&token=de8d8dc1-5cc8-40ca-a5f9-d502358d3e41',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem6',
                                filename: 'E-Com')));
                  },
                ),
                Subject_tile(
                  title: 'Operating Systems',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fos.png?alt=media&token=91f62705-21d5-459a-84f0-ca13792c097d',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem6', filename: 'OS')));
                  },
                ),
                Subject_tile(
                  title: 'Software Engeeniring',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fswe.png?alt=media&token=2a65c618-9429-44ff-b25e-0d8d7ba3d986',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem6', filename: 'SOE')));
                  },
                ),
                Subject_tile(
                  title: 'Web Designing Using \nASP.NET',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem6',
                                filename: 'ASP.Net')));
                  },
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fasp.png?alt=media&token=a435c67f-c70e-4bba-ad1d-95a6e8f288cb',
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
