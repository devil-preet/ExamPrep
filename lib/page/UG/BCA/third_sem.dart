// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../api_pdf/pdf_api.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Third_Sem extends StatefulWidget {
  const Third_Sem({super.key});

  @override
  State<Third_Sem> createState() => _Third_SemState();
}

class _Third_SemState extends State<Third_Sem> {
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
                  title: 'English Communication \nSkills-1',
                  image_name: 'assets/images/firstsem/engc.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-----------------------------discrete-maths----------------------------
                Subject_tile(
                  title: 'Descrete Maths',
                  image_name: 'assets/images/firstsem/dmath.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------csa---------------------------------
                Subject_tile(
                  title: 'CSOA',
                  image_name: 'assets/images/firstsem/csa.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-------------------------------evs----------------------------------
                Subject_tile(
                  title: 'EVS',
                  image_name: 'assets/images/firstsem/evs.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //---------------------------------dbms---------------------------------
                Subject_tile(
                  title: 'DBMS',
                  image_name: 'assets/images/firstsem/dbms.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //---------------------------------cpp---------------------------------
                Subject_tile(
                  title: 'OOPs uing C++',
                  image_name: 'assets/images/firstsem/cpp.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
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
        title: Text("BCA - 3rd SEMESTER"),
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
