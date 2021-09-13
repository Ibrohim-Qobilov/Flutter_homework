import 'package:allhomework/home_work_3/uyga_ui_2.dart';
import 'package:flutter/material.dart';
// page 2

class UygaUiPage extends StatefulWidget {
  @override
  _UygaUiPageState createState() => _UygaUiPageState();
}

class _UygaUiPageState extends State<UygaUiPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              "Represent",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 460,
            width: size.width * 1.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homework3/ikki.jpeg"),
                    fit: BoxFit.fitWidth)),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UygaUiIkki()));
                  },
                  child: Text(
                    "FW19",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Colors.white),
                  ),
                )),
          ),
          Container(
            color: Colors.white,
            width: size.width * 1.0,
            height: 15,
          ),
          Expanded(
            child: Container(
              width: size.width * 1.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homework3/bir.jpeg"),
                      fit: BoxFit.fitWidth)),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 85,
                  left: 60,
                ),
                child: Text(
                  "the\n" + "terrier",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
