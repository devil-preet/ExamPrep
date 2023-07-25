import 'package:flutter/material.dart';
import 'package:pup_prep/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        color: Color.fromARGB(255, 8, 66, 85),
        debugShowCheckedModeBanner: false,
        home: Home_Page());
  }
}
