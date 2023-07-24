import 'package:flutter/material.dart';
import 'package:pup_prep/page/home_page.dart';
import 'package:pup_prep/page/login_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login_Page(),
    );
  }
}
