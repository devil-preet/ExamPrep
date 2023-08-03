// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../api_pdf/pdf_api.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Second_Sem extends StatefulWidget {
  const Second_Sem({super.key});

  @override
  State<Second_Sem> createState() => _Second_SemState();
}

class _Second_SemState extends State<Second_Sem> {
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
                  title: 'General English-2',
                  image_name: 'assets/images/firstsem/eng.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-----------------------------basic math----------------------------
                Subject_tile(
                  title: 'Basic Maths',
                  image_name: 'assets/images/firstsem/math.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //---------------------------------dsa---------------------------------
                Subject_tile(
                  title: 'Data Structures',
                  image_name: 'assets/images/firstsem/DSA.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------digital-electronics---------------------------------
                Subject_tile(
                  title: 'Digital Electronics',
                  image_name: 'assets/images/firstsem/de.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-------------------------------drug-abuse----------------------------------
                Subject_tile(
                  title: 'Drug Abuse',
                  image_name: 'assets/images/firstsem/drug.png',
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
        title: Text("BCA - 2nd SEMESTER"),
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
