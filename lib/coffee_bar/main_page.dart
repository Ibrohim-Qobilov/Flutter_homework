import 'package:allhomework/coffee_bar/coffee_bar.dart';
import 'package:flutter/material.dart';

class CoffeeMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            _selectText(),
            _coffeeText(),
            SizedBox(
              height: 30,
            ),
            _scrollRow(),
            SizedBox(
              height: 30,
            ),
            // Container(height: 350, width: 350, child: _coffeeBar()),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 350,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _coffeeBar(context),
                    _coffeeBar(context),
                    _coffeeBar(context),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 30,
                child: _coffeeButtom(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectText() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 40),
      child: Text(
        "Select",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 40.0,
        ),
      ),
    );
  }

  Widget _coffeeText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 5,
      ),
      child: Text(
        "Coffee",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45.0,
        ),
      ),
    );
  }

  Widget _scrollRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            width: 30,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height:10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }

  Widget _coffeeBar(BuildContext context){
    return InkWell(
      child: Container(
        height: 350,
        width: 230,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                children: [
                  Hero(tag: 1, child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/coffee_shop/coffee.jpg"),
                        fit: BoxFit.cover,
                        // color: Colors.greenAccent,
                      ),
                    ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Cappuccino",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Lattesso",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 35,
              right: 10,
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                child: Text(
                  "\$25",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeBar(),));
      },
    );
  }

  Widget _coffeeButtom() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          "Cappuccino",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 5,
          ),
        ),
        Text(
          "Americano",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 5,
          ),
        ),
        Text(
          "Coffee",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
