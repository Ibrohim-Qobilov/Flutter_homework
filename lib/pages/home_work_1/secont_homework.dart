import 'package:flutter/material.dart';

class SecondHomework extends StatefulWidget {

  @override
  _SecondHomeworkState createState() => _SecondHomeworkState();
}

class _SecondHomeworkState extends State<SecondHomework> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Homework"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: size.width * 0.2,
                height: size.height * 1.0,
                color: Colors.blue,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: size.width * 0.6,
                    height: size.height * 0.08,
                    color: Colors.teal,
                  ),
                   Container(
                    width: size.width * 0.6,
                    height: size.height * 0.08,
                    color: Colors.blue,
                  ),
                   Container(
                    width: size.width * 0.6,
                    height: size.height * 0.08,
                    color: Colors.yellow,
                  ),

                  Container(
                    width: size.width * 0.6,
                    height: size.height * 0.16,
                    color: Colors.redAccent,
                  ),

                  Container(
                    width: size.width * 0.6,
                    height: size.height * 0.16,
                    color: Colors.pinkAccent,
                  ),

                  Container(
                    width: size.width * 0.6,
                    height: size.height * 0.16,
                    color: Colors.yellow,
                  ),



                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
