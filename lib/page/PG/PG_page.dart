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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 195, 55, 99),
              Color.fromARGB(255, 29, 37, 113),
            ],
          ),
        ),
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
                          imageName: 'assets/images/pg/MCA.png',
                          program_name: 'MCA',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MCA()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/pg/Msc(IT).png',
                          program_name: 'Msc (IT)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/pg/English.png',
                          program_name: 'MA(English)',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => working()));
                          }),
                      Program_Tile(
                          imageName: 'assets/images/pg/history.png',
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 99),
                Color.fromARGB(255, 29, 37, 113),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
