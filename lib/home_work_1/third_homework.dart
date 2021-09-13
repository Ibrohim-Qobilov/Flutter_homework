import 'package:flutter/material.dart';

class ThirdHomeworkPage extends StatefulWidget {

  @override
  _ThirdHomeworkPageState createState() => _ThirdHomeworkPageState();
}

class _ThirdHomeworkPageState extends State<ThirdHomeworkPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Third Homework"
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: size.width * 1.0,
              height: size.height * 0.2,
              color: Colors.blueAccent,

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  width: size.width * 0.4,
                  height:  size.height * 0.1,
                ),
                Container(
                  color: Colors.yellow,
                  width: size.width * 0.4,
                  height:  size.height * 0.1,
                ),

              ],
            ),
            Container(
              width: size.width * 1.0,
              height: size.height * 0.2,
              color: Colors.blueAccent,

            ),

            Text(
              "Hello niggalar!",
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold

              ),
            ),

          ],
        ),
      ),
    );
  }
}
