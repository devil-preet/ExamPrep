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
                  image_name: 'assets/images/technical/eng.png',
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
                  image_name: 'assets/images/technical/sad.png',
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
                  image_name: 'assets/images/technical/ss.png',
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
                  image_name: 'assets/images/technical/java.png',
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
                  image_name: 'assets/images/technical/html.png',
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
