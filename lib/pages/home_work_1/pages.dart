
import 'package:allhomework/pages/home_work_1/first_homework.dart';
import 'package:allhomework/pages/home_work_1/fouth_homework.dart';
import 'package:allhomework/pages/home_work_1/secont_homework.dart';
import 'package:allhomework/pages/home_work_1/third_homework.dart';
import 'package:flutter/material.dart';

class HomeWorkBir extends StatelessWidget {
  const HomeWorkBir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home Work 1"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstHomeworkPage()));
              },
              child: Text("Home Work bir"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondHomework()));
              },
              child: Text("Home Work ikki"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdHomeworkPage()));
              },
              child: Text("Home Work uch"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthHomePage()));
              },
              child: Text("Home Work tort"),
            ),
          ],
        ),
      ),
    );
  }
}
