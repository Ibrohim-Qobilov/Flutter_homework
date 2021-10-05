import 'dart:ui';

import 'package:flutter/material.dart';

class CoffeeBar extends StatelessWidget {
  const CoffeeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Hero(tag: 1, child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/coffee_shop/qiz.png",
                  fit: BoxFit.contain,
                ),
              ),),
            ),
            Positioned(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 240,
              child: Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20),
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oakley",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      "Glasses",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cappuccino",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Coffee",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Price",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$25",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
