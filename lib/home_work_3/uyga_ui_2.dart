import 'package:flutter/material.dart';
// page 3

class UygaUiIkki extends StatefulWidget {
  const UygaUiIkki({Key? key}) : super(key: key);

  @override
  _UygaUiIkkiState createState() => _UygaUiIkkiState();
}

class _UygaUiIkkiState extends State<UygaUiIkki> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              "FW19",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.border_all_rounded,
                  color: Colors.black,
                ),
                Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 196,
                    height: 230,
                    color: Colors.white,
                    child: Image.asset("assets/images/homework3/uch.jpeg"),
                  ),
                  Text(
                    "      Reppes\n" + "Lessons Hoodie",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("\$ 215.00 USD"),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 196,
                    height: 230,
                    color: Colors.white,
                    child: Image.asset("assets/images/homework3/uch.jpeg"),
                  ),
                  Text(
                    "Dinner Shirt\n" + "       Split",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("\$ 175.00 USD"),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 196,
                    height: 230,
                    color: Colors.white,
                    child: Image.asset("assets/images/homework3/uch.jpeg"),
                  ),
                  Text(
                    "      T-Shirt\n" + "Warhed black",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("\$ 215.00 USD"),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 196,
                    height: 230,
                    color: Colors.white,
                    child: Image.asset("assets/images/homework3/uch.jpeg"),
                  ),
                  Text(
                    "LOGO Sweater\n" + "   Red masble",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("\$ 215.00 USD"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
