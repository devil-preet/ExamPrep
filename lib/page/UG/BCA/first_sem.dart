import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdf_api.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/subject_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

class First_Sem extends StatefulWidget {
  const First_Sem({super.key});

  @override
  State<First_Sem> createState() => _First_SemState();
}

class _First_SemState extends State<First_Sem> {
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
                  title: 'General English-1',
                  // title2: 'Paper',
                  image_name: 'assets/images/firstsem/eng.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------IT---------------------------------
                Subject_tile(
                  title: 'Fundametals Of - \nInformation Technology',
                  // title2: 'Paper',

                  image_name: 'assets/images/firstsem/IT.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //-------------------------------OA----------------------------------
                Subject_tile(
                  title: 'Office Automation',
                  // title2: 'Paper',
                  image_name: 'assets/images/firstsem/OA2.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //---------------------------------C---------------------------------
                Subject_tile(
                  title: 'Programming - \nFundamentals Using C',
                  // title2: 'Paper',
                  image_name: 'assets/images/firstsem/C.png',
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
                  // title2: 'Paper',
                  image_name: 'assets/images/firstsem/pub.png',
                  onTap: () async {
                    final url =
                        "https://previous-paper.000webhostapp.com/index.pdf";
                    final file = await Pdf_Api.loadnetwork(url);
                    Pdf_Api.openpdf(context, file);
                  },
                ),

                //----------------------------------punjabi-mudla-gyan---------------------------------
                // Subject_tile(
                //   title: 'Punjabi Mudla Gyan',
                //   // title2: 'Paper',
                //   image_name: 'assets/images/firstsem/it.png',
                //   onTap: () async {
                //     final url =
                //         "https://previous-paper.000webhostapp.com/index.pdf";
                //     final file = await Pdf_Api.loadnetwork(url);
                //     Pdf_Api.openpdf(context, file);
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("BCA - 1st SEMESTER"),
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
