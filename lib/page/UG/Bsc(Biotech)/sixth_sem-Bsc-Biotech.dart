// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Sixth_Sem_BSC_BIOTECH extends StatefulWidget {
  const Sixth_Sem_BSC_BIOTECH({super.key});

  @override
  State<Sixth_Sem_BSC_BIOTECH> createState() => _Sixth_Sem_BSC_BIOTECHState();
}

class _Sixth_Sem_BSC_BIOTECHState extends State<Sixth_Sem_BSC_BIOTECH> {
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
                  title: 'Bioprocess Technology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fbiochemistry.png?alt=media&token=b4ddd432-a98b-4376-8aee-53ad22210345',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem6',
                                filename: 'Bioprocess Technology')));
                  },
                ),
                Subject_tile(
                  title: 'Reombinant DNA\nTechnology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fdna.png?alt=media&token=ddc8a4e1-f5ce-4d2e-8b1d-fa9f624b4d72',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem6',
                                filename: 'Reombinant DNA Technology')));
                  },
                ),
                Subject_tile(
                  title: 'Chemistry-VI',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Flaboratory.png?alt=media&token=24841fd9-c0cb-41b0-bc62-469902272727',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem6',
                                filename: 'Chemistry-VI')));
                  },
                ),
                Subject_tile(
                  title: 'Palnt Biotechnology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fvaccine.png?alt=media&token=4c114e52-05f0-4ef7-aa13-3a1cd1830c65',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem6',
                                filename: 'Palnt Biotechnology')));
                  },
                ),
                Subject_tile(
                  title: 'Animal Biotechnology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Ftransgenic.png?alt=media&token=d486688e-d57c-4428-860f-df35a3aaf304',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem6',
                                filename: 'Animal Biotechnology')));
                  },
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
