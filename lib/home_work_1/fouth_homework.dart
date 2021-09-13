import 'package:flutter/material.dart';

class FourthHomePage extends StatefulWidget {
  @override
  _FourthHomePageState createState() => _FourthHomePageState();
}

class _FourthHomePageState extends State<FourthHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Homework"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              width: size.width * 1.0,
              height: size.height * 0.2,
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Colors.teal,
                  width: size.width * 0.3,
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Ozroq text",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.yellow,
              width: size.width * 1.0,
              height: size.height * 0.2,
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Colors.teal,
                  width: size.width * 0.3,
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Ozroq text",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
