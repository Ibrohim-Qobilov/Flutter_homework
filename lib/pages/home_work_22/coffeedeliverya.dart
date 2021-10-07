import 'package:allhomework/pages/home_work_22/coffeedeliveryb.dart';
import 'package:flutter/material.dart';


class CoffeeDeliveryA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 10),
            Image(image: AssetImage("assets/images/coffee/coffee.png")),
            Spacer(flex: 2),
            Text("Making your days with",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
            Text("our coffee.",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
            Spacer(flex: 2),
            Text("The best grain, the finest roast, the",
                style: TextStyle(fontSize: 14.0)),
            Text("most powerful flavor", style: TextStyle(fontSize: 14.0)),
            Spacer(flex: 1),
            _indicator(_size),
            Spacer(flex: 6),
            _forwardArrowButton(_size, context),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }

  _indicator(_size) {
    return Container(
      padding: EdgeInsets.only(left: 150.0),
      alignment: Alignment.center,
      height: _size.height * 0.014,
      width: _size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, i) {
          return (i != 0)
              ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 10.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0 - i),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Colors.grey[500],
                    size: (13 - i * 1.5),
                  ))
              : Container(
                  margin: EdgeInsets.only(right: 15.0),
                  width: 30.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black),
                );
        },
      ),
    );
  }

  _forwardArrowButton(_size, context) {
    return Container(
      alignment: Alignment(0.8, 0.0),
      height: _size.height * 0.08,
      width: _size.width,
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.black,
        child: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 33.0,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoffeeDeliveryB(),
              ),
            );
          },
        ),
      ),
    );
  }
}
