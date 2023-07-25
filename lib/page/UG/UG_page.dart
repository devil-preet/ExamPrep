import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'BCA/bca_course.dart';

class UnderGrad extends StatefulWidget {
  const UnderGrad({super.key});

  @override
  State<UnderGrad> createState() => _UnderGradState();
}

class _UnderGradState extends State<UnderGrad> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarColor:
              Color.fromARGB(255, 3, 45, 59) // Use any color
          ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 66, 85),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 45, 59),
          title: const Text("CHOOSE YOUR COURSE")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BCA()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 45, 59)),
                child: const Text(
                  "BCA",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
