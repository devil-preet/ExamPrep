import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/UG/BCA/fifth_sem.dart';
import 'package:pup_prep/page/UG/BCA/first_sem.dart';
import 'package:pup_prep/page/UG/BCA/fourth_sem.dart';
import 'package:pup_prep/page/UG/BCA/second_sem.dart';
import 'package:pup_prep/page/UG/BCA/sixth_sem.dart';
import 'package:pup_prep/page/UG/BCA/third_sem.dart';
import 'package:pup_prep/widgets/sem_tile.dart';
import 'package:pup_prep/widgets/up_banner.dart';

class BCA extends StatefulWidget {
  const BCA({super.key});

  @override
  State<BCA> createState() => _BCAState();
}

class _BCAState extends State<BCA> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF394348),
      appBar: AppBar(
          backgroundColor: Color(0xFF394348), title: const Text("SEMESTER")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Up_Banner(
                labal: 'Choose your Semester',
                width: mq.width * 0.8,
                height: mq.height * 0.06,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => First_Sem()));
                },
                sem_name: 'First Semester Paper',
                image_name: 'assets/images/sem/1no.png',
              ),
              SizedBox(
                height: 20,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second_Sem()));
                },
                sem_name: 'Second Semester Paper',
                image_name: 'assets/images/sem/2no.png',
              ),
              SizedBox(
                height: 20,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Third_Sem()));
                },
                sem_name: 'Third Semester Paper',
                image_name: 'assets/images/sem/3no.png',
              ),
              SizedBox(
                height: 20,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fourth_Sem()));
                },
                sem_name: 'Fourth Semester Paper',
                image_name: 'assets/images/sem/4no.png',
              ),
              SizedBox(
                height: 20,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fifth_Sem()));
                },
                sem_name: 'Fifth Semester Paper',
                image_name: 'assets/images/sem/5no.png',
              ),
              SizedBox(
                height: 20,
              ),
              Semester_tile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sixth_Sem()));
                },
                sem_name: 'Sixth Semester Paper',
                image_name: 'assets/images/sem/6no.png',
              ),
              SizedBox(
                height: 20,
              ),
              // const SizedBox(height: 32),
              // Row(
              //   children:[
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => First_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Color(0xFF394348),
              //         ),
              //         child:
              //             const Text("1st Sem", style: TextStyle(fontSize: 20)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Second_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor:
              //                 const Color.fromARGB(255, 3, 45, 59)),
              //         child: const Text("2nd", style: TextStyle(fontSize: 32)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //   ],
              // ),

              // //second row
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   children: <Widget>[
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Third_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor:
              //                 const Color.fromARGB(255, 3, 45, 59)),
              //         child: const Text("3rd", style: TextStyle(fontSize: 32)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Fourth_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor:
              //                 const Color.fromARGB(255, 3, 45, 59)),
              //         child: const Text("4th", style: TextStyle(fontSize: 32)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //   ],
              // ),

              // //3rd row
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   children: <Widget>[
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Fifth_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor:
              //                 const Color.fromARGB(255, 3, 45, 59)),
              //         child: const Text("5th", style: TextStyle(fontSize: 32)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () async {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Sixth_Sem()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor:
              //                 const Color.fromARGB(255, 3, 45, 59)),
              //         child: const Text("6th", style: TextStyle(fontSize: 32)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 30,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
