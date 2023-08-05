import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Subject_tile extends StatelessWidget {
  Subject_tile({
    super.key,
    required this.onTap,
    required this.image_name,
    required this.title,
    // required this.title2,
  });
  Function() onTap;
  String image_name;
  String title;
  // String title2;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: mq.width,
          height: mq.height * 0.20,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 195, 55, 99), //redish
                    Color.fromARGB(255, 29, 37, 113), //blueish
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 6.0]),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  width: mq.width * 0.3,
                  height: mq.height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image_name))),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'font1'),
                  ),
                  Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: GestureDetector(
                          onTap: onTap,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'Click To Get',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 15,
                                    fontFamily: 'font1'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.download,
                            color: Colors.blue.shade900,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
