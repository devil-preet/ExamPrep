import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/widgets/program_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.purple
            ], // You can change the colors here
            // begin: Alignment.topCenter, end: Alignment.bottomCenter,
          ),
        ),
        // ),
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
                  child: Row(
                    children: [
                      Program_Tile(
                          imageName: 'assets/images/login2.png',
                          program_name: 'MCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MCA()));
                          }),
                      Program_Tile(
                        imageName: 'assets/images/other.png',
                        program_name: 'MA',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/ug.png',
                        program_name: 'M-TECH',
                      ),
                      Program_Tile(
                        imageName: 'assets/images/pg.png',
                        program_name: 'MBA',
                      ),
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
