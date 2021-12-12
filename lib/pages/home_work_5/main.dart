import 'dart:math';

import 'package:flutter/material.dart';

class HomeWorkDars9 extends StatefulWidget {
  @override
  _HomeWorkDars9State createState() => _HomeWorkDars9State();
}

class _HomeWorkDars9State extends State<HomeWorkDars9> {
  var radius;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.blue.shade900,
            height: 50,
            width: 400.0,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              alignment: Alignment.center,
              height: 30.0,
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search), Text("Search")],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ),
          preferredSize: Size.fromHeight(48.0),
        ),
        elevation: 0,
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              "Explore",
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.camera_alt,
              size: 30,
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 50,
            width: MediaQuery.of(context).size.width * 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://source.unsplash.com/random/$index'),
                fit: BoxFit.cover
              ),
            ),
          );
        },
      ),
    );
  }

  randonColor() {
    List<Color> colors = [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.teal,
      Colors.green,
      Colors.cyan,
      Colors.purple,
      Colors.grey.shade400,
    ];
    int randomSon = Random().nextInt(8);
    return colors[randomSon];
  }
}
