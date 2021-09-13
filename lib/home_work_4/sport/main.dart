import 'package:allhomework/home_work_4/sport/statistics_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'model/sport.dart';

class SportMenPage extends StatefulWidget {
  @override
  _SportMenPageState createState() => _SportMenPageState();
}

class _SportMenPageState extends State<SportMenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (Context) => SecondPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Hey Brian,",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 38.0),
                            ),
                          ),
                          Text(
                            "What are you \nup to today?",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 34.0,
                        backgroundColor: Colors.indigo,
                        backgroundImage:
                            AssetImage("assets/images/homework4/money.png"),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: _setSportsmen(),
              ),
              Divider(
                thickness: 1.0,
              ),
              setBottomNavigationIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _setSportsmen() {
    List<Sport> sport1 = [];
    List<Sport> sport2 = [];
    for (int i = 0; i < getSport().length; i++) {
      if (i % 2 == 0)
        sport1.add(getSport()[i]);
      else
        sport2.add(getSport()[i]);
    }

    return ListView.builder(
      itemCount: sport1.length,
      itemBuilder: (context, index) {
        return Expanded(
          child: Row(
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  color: getSport()[index].color,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top: 16.0, left: 12.0),
                        child: Text(
                          sport1[index].title,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(sport1[index].imageUrl),
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  color: sport2[index].color,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 16.0, left: 12.0),
                        child: Text(
                          sport2[index].title,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        height: 100.0,
                        alignment: Alignment.bottomRight,
                        child: Image.asset(sport2[index].imageUrl),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget setBottomNavigationIcon() {
    return Row(
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
    );
  }

  Widget _setIcon(icon, color) => Icon(
        icon,
        color: color,
      );
}
