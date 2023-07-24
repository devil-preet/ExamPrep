import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  Home_page({this.username, this.useremail, super.key});

  String? username;
  String? useremail;

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB25EC1),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name: ${widget.username}",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email: ${widget.useremail}",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
