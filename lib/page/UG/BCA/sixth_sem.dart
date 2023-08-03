// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../api_pdf/pdf_api.dart';
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
      body: SafeArea(
        // backgroundColor: Color(0xFF394348),

        child: Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
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
                Subject_tile(
                  title: 'English Litrary Skills-2',
                  image_name: 'assets/images/technical/eng.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'E-Commerce',
                  image_name: 'assets/images/technical/ec.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'Operating Systems',
                  image_name: 'assets/images/technical/os.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/PROGRAMMING%20FUNDAMENTALS%20USING%20C%20BCAQ.%20PAPERS.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'Software Engeeniring',
                  image_name: 'assets/images/technical/swe.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'Web Designing Using \nASP.NET',
                  image_name: 'assets/images/technical/asp.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'Punjabi',
                  image_name: 'assets/images/technical/pub.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name: 'assets/images/technical/pbi.png',
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
        title: Text("BCA - 6TH SEMESTER"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),
          ),
        ),
      ),
    );
  }
}
