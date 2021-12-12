import 'dart:math';

import 'package:flutter/material.dart';

class HotelMyTripPage extends StatefulWidget {
  @override
  _HotelMyTripPageState createState() => _HotelMyTripPageState();
}

class _HotelMyTripPageState extends State<HotelMyTripPage> {
  var radius;
  PageStorageKey pageStrKey = PageStorageKey("key1");
  PageStorageBucket pageStrBucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(),
      body: _body(),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage("assets/images/homework18/hotelbir.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "     Ibrohim Qobilov",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.hotel_rounded),
              title: Text("Hotels"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Maps"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 30,
      title: Text(
        "My Trip",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ))
      ],
    );
  }

  Widget _body() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          height: MediaQuery.of(context).size.height * 50,
          width: MediaQuery.of(context).size.width * 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    NetworkImage('https://source.unsplash.com/random/$index'),
                fit: BoxFit.cover),
          ),
        );
      },
    );
  }

 
}
