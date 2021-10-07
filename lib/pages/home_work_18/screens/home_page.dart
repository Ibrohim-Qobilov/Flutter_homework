import 'package:allhomework/pages/home_work_18/screens/filter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HotelHomePage extends StatefulWidget {
  @override
  _HotelHomePageState createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  var _size;
  var _white = Colors.white;
  var _black = Colors.black;
  // Color _deepOrange = Colors.deepOrange;
  var _grey = Colors.grey;
  // Color _transparent = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: _black),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: _white,
        elevation: 12.0,
        leadingWidth: _size.width * 0.3,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Your Location",
                style: TextStyle(color: _grey),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Jemberaya",
                style: TextStyle(color: _black, fontSize: 18.0),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => HotelFilterPage()));
            },
            icon: Icon(Icons.add_road),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          _hotelList(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "POPULAR DESTINATION",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          _hotelInfo(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "New Hotel",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _roomsInfo(),
        ],
      ),
    );
  }

  Widget _hotelList() {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/homework18/map.png"),
                      ),
                      color: Colors.grey.shade200),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Near by"),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/homework18/hotelbir.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white30),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Paris"),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/homework18/hotelikki.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white30),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Switzeland"),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/homework18/hoteluch.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white30),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tashkent"),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/homework18/hoteltort.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("Tashkent city"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _hotelInfo() {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/homework18/hotelbir.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.greenAccent),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orangeAccent),
                        alignment: Alignment.center,
                        child: Text(
                          "\$1200\nPen Night",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Santorini Luxury Hotel",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 4),
                        child: Icon(
                          CupertinoIcons.star_fill,
                          size: 20,
                          color: Colors.orange,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.orange,
                      ),
                      Icon(CupertinoIcons.star_fill,
                          size: 20, color: Colors.white),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "(4.2)",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/homework18/hoteluch.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.greenAccent),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orangeAccent),
                        alignment: Alignment.center,
                        child: Text(
                          "\$1200\nPen Night",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Nest One ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 4),
                        child: Icon(
                          CupertinoIcons.star_fill,
                          size: 20,
                          color: Colors.orange,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 20,
                        color: Colors.white,
                      ),
                      Icon(CupertinoIcons.star_fill,
                          size: 20, color: Colors.white),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "(3.2)",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roomsInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework18/roomsbir.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Santorini Hotel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework18/roomsuch.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Nest one Hotel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework18/roomsikki.jpeg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Santorini Hotel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.orange,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
