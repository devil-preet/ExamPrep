import 'package:flutter/material.dart';

import '../main.dart';

class working extends StatefulWidget {
  const working({super.key});

  @override
  State<working> createState() => _workingState();
}

class _workingState extends State<working> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  width: mq.width * 0.3,
                  height: mq.height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/error.png"))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SORRY ! \n\nwe are working on this page',
                    style: TextStyle(
                        color: Colors.white, fontSize: 25, fontFamily: 'font1'),
                    textAlign: TextAlign.center,
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
