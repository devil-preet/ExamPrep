import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';
import 'package:pup_prep/page/home_page.dart';
import 'package:pup_prep/widgets/textfiled.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: mq.width,
        height: mq.height,
        decoration: BoxDecoration(
            color: Colors.green.shade300,
            image: DecorationImage(
                image: AssetImage("assets/images/login.jpg"),
                fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 100, bottom: 40),
            width: mq.width * 0.9,
            height: mq.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.3),
                image: DecorationImage(
                    image: AssetImage("assets/images/noise.jpg"),
                    opacity: 0.03,
                    fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: mq.width * 1,
                  height: mq.height * 0.45,
                  child: Image(image: AssetImage("assets/images/login2.png")),
                ),
                CTextFiled(
                  hintText: "Enter Name",
                  controller: namecontroller,
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
                SizedBox(
                  height: 20,
                ),
                CTextFiled(
                  hintText: "Enter Email",
                  controller: emailcontroller,
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                    width: mq.width * 0.75,
                    height: mq.height * 0.06,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_page(username: namecontroller.text,useremail: emailcontroller.text,)));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Color(0xFFED6258),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
