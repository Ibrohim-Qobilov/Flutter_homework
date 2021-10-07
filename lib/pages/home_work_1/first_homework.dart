import 'package:flutter/material.dart';

class FirstHomeworkPage extends StatefulWidget {
  @override
  _FirstHomeworkPageState createState() => _FirstHomeworkPageState();
}

class _FirstHomeworkPageState extends State<FirstHomeworkPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("First Homework"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.green,
              width: size.width * 1.0,
              height: size.height * 0.12,
            ),
            Container(
              color: Colors.yellow,
              width: size.width * 0.5,
              height: size.height * 0.12,
            ),
            Container(
              color: Colors.red,
              width: size.width * 0.5,
              height: size.height * 0.12,
            ),
            Container(
              color: Colors.blue,
              width: size.width * 0.5,
              height: size.height * 0.12,
            ),
            Container(
              color: Colors.blueGrey,
              width: size.width * 0.5,
              height: size.height * 0.12,
            ),
          ],
        ),
      ),
    );
  }
}
