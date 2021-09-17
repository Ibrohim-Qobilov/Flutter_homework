import 'package:allhomework/home_work_13/filter.dart';
import 'package:allhomework/home_work_13/menu_page.dart';
import 'package:flutter/material.dart';

class Dars19Page extends StatelessWidget {
  const Dars19Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/homework13/main.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              "Order your\nFacorite\nFood",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              "Made by the finest Chefs erey\ndish raises the bar of Tante, Health\nHygiene and cleanliness.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilterPage()));
                },
                child: Text("Skip"),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ],
      ),
    );
  }
}
