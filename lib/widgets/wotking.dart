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
    return Scaffold(
      body: Container(
        width: mq.width,
        height: mq.height,
        decoration: BoxDecoration(
          color: Color(0xFF6A8C95),
        ),
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
            Text(
              "SORRY !",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "we are working on this page",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
