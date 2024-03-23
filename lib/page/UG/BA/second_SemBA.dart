// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Second_SemBA extends StatefulWidget {
  const Second_SemBA({super.key});

  @override
  State<Second_SemBA> createState() => _Second_SemBAState();
}

class _Second_SemBAState extends State<Second_SemBA> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BA - 2nd SEMESTER",
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
                  title: 'English\nCommunication',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "english communication",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'English Literature',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "English literature",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'History of India',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Findia.png?alt=media&token=ab0f4317-3ea1-4382-8bfa-7feffaf10c16',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "history of india",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Analytic Geomerty-VI',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2FAnalytic%20Geomerty.png?alt=media&token=9ec343f9-8eda-45c5-bbbb-68caae6e70fa',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "analytic gemotry",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Punjabi Lazme',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Freading.png?alt=media&token=3faf2c42-96a3-4255-a250-c8ccf414b111',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "punjabi lazme",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Punjabi Mudla\nGyaan',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpub.png?alt=media&token=40f1e69d-cb9c-4f10-8db4-b6e2bbacc454',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "punjabi mudla gyaan",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Punjabi Sahit',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpbi.png?alt=media&token=c0cad45e-ae09-4ee0-952d-073a3dba57cb',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "punjabi sahit",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Political Science',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Fscience.png?alt=media&token=16097971-16a4-45dc-9f11-98c3489a2dc7',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "political science",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Physical Geography-II',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Fgeography.png?alt=media&token=058e2387-a6d7-44aa-b01b-7423c4ef6393',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "physical geography 2",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Partial Diffrential\nEqation',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Fpi.png?alt=media&token=356d08db-3c3b-404b-9e53-b67ac71d05aa',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "partial diffrential eqation",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Calculus-II',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Fcalculus.png?alt=media&token=cfd5c0fa-69e0-46b6-a51e-7212bf64109d',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "calculus",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Physical Education\n(Theory)',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Frun.png?alt=media&token=59c2bde0-1095-48d4-a932-688b12746380',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "physical education",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Music Vocal (Theory)',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2FBA%2Fvocal.png?alt=media&token=2207dd71-809a-4402-9324-cb195c2ccc1a',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "music vocal theory",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Ms office\nAutomation Tool',
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2FOA2.png?alt=media&token=438d3cce-f50b-4ba4-8c41-528515708f87',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "ms officice automation tool",
                                course: "BA",
                                sem: "Sem2")));
                  },
                ),
                Subject_tile(
                  title: 'Drug Abuse',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                filename: "drug abuse",
                                course: "BA",
                                sem: "Sem2")));
                  },
                  image_name:
                      'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fdrug.png?alt=media&token=01c7b83e-696f-448e-97ff-0cb0dceef260',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
