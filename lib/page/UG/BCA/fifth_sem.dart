import 'package:flutter/material.dart';
import '../../../main.dart';
import '../../../widgets/subject_tile.dart';
import '../../../widgets/up_banner.dart';

class Fifth_Sem extends StatefulWidget {
  const Fifth_Sem({super.key});

  @override
  State<Fifth_Sem> createState() => _Fifth_SemState();
}

class _Fifth_SemState extends State<Fifth_Sem> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BCA - 5TH SEMESTER",
          style: TextStyle(fontFamily: 'font1'),
        ),
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
      body: SafeArea(
        child: Container(
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
                  title: 'English Litrary Skills-1',
                  image_name: 'assets/images/technical/eng.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'System Analysis & \nDesign',
                  image_name: 'assets/images/technical/sad.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'System Software',
                  image_name: 'assets/images/technical/ss.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Java Programming',
                  image_name: 'assets/images/technical/java.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Web Designing Using \nHTML & DHTML',
                  image_name: 'assets/images/technical/html.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Punjabi',
                  image_name: 'assets/images/technical/pub.png',
                  onTap: () {},
                ),
                Subject_tile(
                  title: 'Punjabi Mudla Gyan',
                  image_name: 'assets/images/technical/pbi.png',
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
