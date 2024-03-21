// ignore_for_file: unused_import

import 'package:flutter/material.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 2nd SEMESTER",
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
                  title: 'General English-2',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Feng.png?alt=media&token=b0250b58-2733-4645-b155-c9a076c64caeg',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Basic Maths',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fmath1.png?alt=media&token=e7790ada-72ff-4f4b-ba89-cac49ea43519g',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Data Structures',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fdsa.png?alt=media&token=ca1e3a1e-b9de-44de-9b49-5b4963d15afd',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Digital Electronics',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fde.png?alt=media&token=6d31d2bd-16d0-479d-9dea-b3903ae896a0',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Drug Abuse',
                  onTap: () {},
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fdrug.png?alt=media&token=01c7b83e-696f-448e-97ff-0cb0dceef260',
                ),
                Subject_tile(
                  title: 'Punjabi',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpub.png?alt=media&token=40f1e69d-cb9c-4f10-8db4-b6e2bbacc454',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Ftechnical%2Fpbi.png?alt=media&token=c0cad45e-ae09-4ee0-952d-073a3dba57cb',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
