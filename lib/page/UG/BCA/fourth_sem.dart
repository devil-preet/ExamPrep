// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../api_pdf/pdf_api.dart';
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
      body: SafeArea(
        // backgroundColor: Color(0xFF394348),

        child: Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple
              ], // You can change the colors here
              // begin: Alignment.topCenter, end: Alignment.bottomCenter,
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

                //----------------------------------english---------------------------------
                Subject_tile(
                  title: 'English Communication \nSkills-2',
                  image_name: 'assets/images/firstsem/eng.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-----------------------------consm----------------------------
                Subject_tile(
                  title: 'CONSM (Maths)',
                  image_name: 'assets/images/firstsem/dmath.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-------------------------------MIS----------------------------------
                Subject_tile(
                  title: 'Management Information \nSystem',
                  image_name: 'assets/images/firstsem/mis1.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //---------------------------------cn---------------------------------
                Subject_tile(
                  title: 'Computer Natworks',
                  image_name: 'assets/images/firstsem/cn.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-------------------------------rdbms----------------------------------
                Subject_tile(
                  title: 'RDBMS',
                  image_name: 'assets/images/firstsem/dbms.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------punjabi---------------------------------
                Subject_tile(
                  title: 'Punjabi',
                  image_name: 'assets/images/firstsem/pub.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------punjabi-mudla-gyan---------------------------------
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name: 'assets/images/firstsem/pbi.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("BCA - 4TH SEMESTER"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple
              ], // You can change the colors here
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
