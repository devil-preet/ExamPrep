import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Program_Tile extends StatelessWidget {
  Program_Tile({
    super.key,
    this.imageName,
    this.onTap,
    required this.program_name,
  });
  String? imageName;
  String program_name;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: mq.width * 0.95,
          height: mq.height * 0.50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
           color: Color(0xFF6A8C95).withOpacity(0.7),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 60, top: 10),
                  child: Container(
                    width: mq.width * 0.5,
                    height: mq.height * 0.28,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageName.toString()))),
                  ),
                ),
                Text(
                  program_name,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'font1'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Get previous year question-papers\nof ${program_name.toLowerCase()}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'font1'),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: mq.width * 0.125,
                        height: mq.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: mq.width * 0.015,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: mq.width * 0.36,
                          height: mq.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              'Choose Sem',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'font2'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
