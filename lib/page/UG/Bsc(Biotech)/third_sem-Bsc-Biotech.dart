// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class ThirdSem_BSC_BIOTECH extends StatefulWidget {
  const ThirdSem_BSC_BIOTECH({super.key});

  @override
  State<ThirdSem_BSC_BIOTECH> createState() => _ThirdSem_BSC_BIOTECHState();
}

class _ThirdSem_BSC_BIOTECHState extends State<ThirdSem_BSC_BIOTECH> {
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
                  title: 'Enviromental\nBiotechnology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fbiochemistry.png?alt=media&token=b4ddd432-a98b-4376-8aee-53ad22210345',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'Enviromental Biotechnology')));
                  },
                ),
                Subject_tile(
                  title: 'Genetics',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fdna.png?alt=media&token=ddc8a4e1-f5ce-4d2e-8b1d-fa9f624b4d72',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'Genetics')));
                  },
                ),
                Subject_tile(
                  title: 'Chemistry-III',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Flaboratory.png?alt=media&token=24841fd9-c0cb-41b0-bc62-469902272727',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'Chemistry-3')));
                  },
                ),
                Subject_tile(
                  title: 'General Microbiology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fvaccine.png?alt=media&token=4c114e52-05f0-4ef7-aa13-3a1cd1830c65',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'General Microbiology')));
                  },
                ),
                Subject_tile(
                  title: 'Enzymology',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBsc%2Fbacteria.png?alt=media&token=9efe1e60-fe0f-4934-b573-bcd61fefa592',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'Enzymology')));
                  },
                ),
                Subject_tile(
                  title: 'EVS & Road Safety',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fevs.png?alt=media&token=7d06ba91-ac14-4399-8a20-11185e49e988',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'Bcs(Biotech)',
                                sem: 'Sem3',
                                filename: 'EVS & Road Safety')));
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
