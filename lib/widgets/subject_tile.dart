import 'package:flutter/material.dart';
import 'package:pup_prep/main.dart';

class Subject_tile extends StatelessWidget {
  Subject_tile({
    super.key,
    required this.onTap,
    this.image_name,
    required this.title,
    // required this.title2,
  });
  Function() onTap;
  String? image_name;
  String title;
  // String title2;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    if (image_name == null) {
      image_name =
          "https://firebasestorage.googleapis.com/v0/b/exam-prep-7955c.appspot.com/o/images%2FUnder%20Graduation%2Fstudent_9949295.png?alt=media&token=72857bd9-1a3c-45a6-bbfe-bbc6c3beb7e8";
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: mq.width,
          height: mq.height * 0.20,
          decoration: BoxDecoration(
              color: Color(0xFF6A8C95).withOpacity(0.7),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: mq.width * 0.2,
                  height: mq.height * 0.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image_name.toString()))),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black, fontSize: 21, fontFamily: 'font1'),
                  ),
                  Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: GestureDetector(
                          onTap: onTap,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'Click To Get',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'font1'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.download,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
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
