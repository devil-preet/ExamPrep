import 'package:flutter/material.dart';
import 'package:pup_prep/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 249, 248, 250)),
        // useMaterial3: true,
        textTheme: TextTheme(
            // ignore: deprecated_member_use
            bodyText1: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      ),
      home: Home_Page(),
    );
  }
}
