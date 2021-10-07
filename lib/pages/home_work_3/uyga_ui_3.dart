import 'package:allhomework/pages/home_work_3/uyga_ui.dart';
import 'package:flutter/material.dart';

//page 1

class UygaUiPageUch extends StatefulWidget {
  @override
  _UygaUiPageUchState createState() => _UygaUiPageUchState();
}

class _UygaUiPageUchState extends State<UygaUiPageUch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              "RPRESENT",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width * 1.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/homework3/bir.jpeg"),
                        fit: BoxFit.fitWidth)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 70, 90),
                  child: Text(
                    "TERRIER\n" + " BLACK", 
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "  9  ",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(
                    "Color",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 10,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.yellow,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                      "______________________________________________________________"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "> 10 <",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "       SIZE",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "                                                                       "),
                ],
              ),
              Row(
                children: [
                  Text(
                      "______________________________________________________________"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  11  ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text("The Terrier. A lightweight, hand-mode\n" +
                  "sneker crafter for the everyday earer", style: TextStyle(color: Colors.grey),),
                  Text("  \n                "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  12  ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text("\nThe Terrier. A lightweight, hand-mode\n" +
                  "sneker crafter for the everyday earer",style: TextStyle(color: Colors.grey), ),
                  Text("                   "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  13  ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text("\nThe Terrier. A lightweight, hand-mode\n" +
                  "sneker crafter for the everyday earer", style: TextStyle(color: Colors.grey),),
                  Text("                   "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  14  ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text("\nThe Terrier. A lightweight, hand-mode\n" +
                  "sneker crafter for the everyday earer", style: TextStyle(color: Colors.grey),),
                  Text("                   "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  15  ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text("\nThe Terrier. A lightweight, hand-mode\n" +
                  "sneker crafter for the everyday earer", style: TextStyle(color: Colors.grey),),
                  Text("                   "),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\n"),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> UygaUiPage()));}, child: Text("\$ 300.00 GBP", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(shadowColor: Colors.white,primary: Colors.black),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
