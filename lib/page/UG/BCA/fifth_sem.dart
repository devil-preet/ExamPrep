import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdfview_page.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Fifth_Sem extends StatefulWidget {
  const Fifth_Sem({super.key});

  @override
  State<Fifth_Sem> createState() => _Fifth_SemState();
}

class _Fifth_SemState extends State<Fifth_Sem> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 5TH SEMESTER",
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
          decoration: BoxDecoration(
            color: Color(0xFF6A8C95)
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
                  title: 'English Litrary \nSkills-1',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem5', filename: 'ELS')));
                  },
                ),
                Subject_tile(
                  title: 'System Analysis & \nDesign',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fsad.png?alt=media&token=c0040938-f8aa-4973-908b-83a3ae94964a',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem5', filename: 'SAD')));
                  },
                ),
                Subject_tile(
                  title: 'System Software',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fss.png?alt=media&token=1a8741ac-5d8f-4ba3-876d-152fda7ae5d2',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA', sem: 'Sem5', filename: 'SYS')));
                  },
                ),
                Subject_tile(
                  title: 'Java Programming',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fjava.png?alt=media&token=6f16d935-7593-4fbb-8d57-4cfcfc694d59',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem5',
                                filename: 'Java')));
                  },
                ),
                Subject_tile(
                  title: 'Web Designing Using \nHTML & DHTML',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fhtml.png?alt=media&token=2c291e2b-eabc-4d7e-b750-edf851d555a2',
                  onTap: () {
                                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(
                                course: 'BCA',
                                sem: 'Sem5',
                                filename: 'HTML')));
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
