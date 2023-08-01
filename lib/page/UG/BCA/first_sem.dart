import 'package:flutter/material.dart';
import 'package:pup_prep/api_pdf/pdf_api.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/course_tile.dart';
import 'package:pup_prep/widgets/program_tile.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF394348),
        appBar: AppBar(
          backgroundColor: Color(0xFF394348),
          title: Text(
            "FIRST SEM",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Up_Banner(
              labal: 'Select Subject',
              width: mq.width * 0.7,
              height: mq.height * 0.06,
            ),
            Subject_tile(
              title: 'Get PDF of C Previous',
              title2: 'Paper',
              image_name: 'assets/images/firstsem/C.png',
              onTap: () {},
            ),
            Subject_tile(
              title: 'Get PDF of IT Previous',
              title2: 'Paper',
              image_name: 'assets/images/firstsem/it.png',
              onTap: () async{
                final url="https://drive.google.com/file/d/1-yF7Zcx0T5UJSaNdVWgGcxT5m9kXaOkI/view?usp=drive_link";
                final file= await Pdf_Api.loadnetwork(url);
                Pdf_Api.openpdf(context, file);
              },
            ),
          ],
        ),
      ),
    );
  }
}
