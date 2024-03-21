import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/program_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';
import '../../widgets/wotking.dart';
import 'MCA/MCA.dart';

class PostGrad extends StatefulWidget {
  const PostGrad({super.key});

  @override
  State<PostGrad> createState() => _PostGradState();
}

class _PostGradState extends State<PostGrad> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mq.height,
        width: mq.width,
       color: Color(0xFF6A8C95),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Up_Banner(
                  labal: 'Scroll right to browse',
                  width: mq.width * 0.8,
                  height: mq.height * 0.06,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Program_Tile(
                          imageName: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FPost%20Graduation%2FMCA.png?alt=media&token=beec8359-b4cd-40df-ab65-ca6b3ebad06e',
                          program_name: 'MCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MCA()));
                          }),
                      Program_Tile(
                          imageName: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FPost%20Graduation%2FMsc(IT).png?alt=media&token=5517e3b1-442a-4cfc-a6a1-69a307932d51',
                          program_name: 'Msc (IT)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FPost%20Graduation%2FEnglish.png?alt=media&token=797dcaec-4709-4309-83e9-e6fe37f784d1',
                          program_name: 'MA(English)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: "https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FPost%20Graduation%2Fhistory.png?alt=media&token=c892bee5-f649-4284-94f2-4195189b7d6d",
                          program_name: 'MA(History)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("CHOOSE YOUR PROGRAM"),
        flexibleSpace: Container(
          color: Color(0xFF6A8C95),
        ),
      ),
    );
  }
}
