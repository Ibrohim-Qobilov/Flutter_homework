import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'model/sport.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Statistics",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: setSport(),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                    child: Text(
                      "Latest Activities",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    showMainInfo(),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 18.0,
                        vertical: 12.0,
                      ),
                      child: Text(
                        "Morning Run",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    getInfo(),
                    SizedBox(
                      height: 6.0,
                      width: 1.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/homework4/karta.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    viewDetails(),
                    Divider(
                      thickness: 1,
                    ),
                    showBottomNavigationIcon(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showMainInfo() => ListTile(
        leading: CircleAvatar(
          radius: 28.0,
          backgroundImage: AssetImage("assets/images/homework4/money.png"),
        ),
        title: Text(
          "Brian",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          "September 11, 2021 AT   10.55 PM",
        ),
        trailing: Icon(
          Icons.run_circle_outlined,
          color: Colors.orange,
          size: 36.0,
        ),
      );

  Widget viewDetails() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "View details >",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: Colors.grey,
                  ),
                  Text(
                    "99",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Icon(
                    CupertinoIcons.chat_bubble,
                    color: Colors.grey,
                  ),
                  Text(
                    "101",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget setSport() => ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: getSport().length,
      itemBuilder: (context, index) {
        Sport sport = getSport()[index];
        return Column(
          children: [
            Card(
              elevation: 16.0,
              margin: EdgeInsets.symmetric(
                horizontal: 6.0,
                vertical: 6.0,
              ),
              child: Container(
                height: 80,
                width: 110,
                child: Image.asset(sport.imageUrl),
              ),
              color: sport.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Text(
              sport.title,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        );
      });

  Widget showBottomNavigationIcon() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _setIcon(CupertinoIcons.house_alt, Colors.black),
          _setIcon(CupertinoIcons.chart_bar_circle_fill, Colors.grey),
          _setIcon(CupertinoIcons.chat_bubble, Colors.grey),
          _setIcon(CupertinoIcons.person, Colors.grey),
          CircleAvatar(
            backgroundColor: Colors.indigo,
            backgroundImage: AssetImage("assets/images/homework4/money.png"),
          )
        ],
      ),
    );
  }

  Widget _setIcon(icon, color) => Icon(
        icon,
        color: color,
      );

  Widget getInfo() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          setInfo("Distance", "31.00km"),
          setInfo("Elev Gain", "231m"),
          setInfo("Time", "2:23"),
          setInfo("Avg Pace", "4:27/km"),
        ],
      );

  Widget setInfo(String title, String info) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            info,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      );
}
