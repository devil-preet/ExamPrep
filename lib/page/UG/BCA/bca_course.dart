import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pup_prep/page/UG/BCA/fifth_sem.dart';
import 'package:pup_prep/page/UG/BCA/fourth_sem.dart';
import 'package:pup_prep/page/UG/BCA/sixth_sem.dart';

import 'first_sem.dart';
import 'second_sem.dart';
import 'third_sem.dart';

class BCA extends StatefulWidget {
  const BCA({super.key});

  @override
  State<BCA> createState() => _BCAState();
}

class _BCAState extends State<BCA> {
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
          title: const Text("CHOOSE YOUR SEMESTER")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 32),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => First_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("1st", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Second_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("2nd", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),

              //second row

              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Third_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("3rd", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Fourth_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("4th", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),

              //3rd row

              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Fifth_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("5th", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Sixth_Sem()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 45, 59)),
                      child: const Text("6th", style: TextStyle(fontSize: 32)),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
