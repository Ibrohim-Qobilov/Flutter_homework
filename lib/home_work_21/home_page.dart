import 'dart:math';

import 'package:allhomework/home_work_21/info_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: _appBar(),
        body: ListView(
          children: [
            _followContainer(),
            _postCard(context),
            _sizedBox(),
            _postCard(context),
          ],
        ));
  }

  // appBar qismi uchun
  AppBar _appBar() {
    return AppBar(
      
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "Discovery",
        style: TextStyle(
          color: Colors.black,
          fontSize: 26.0,
        ),
      ),
      actions: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.camera_circle,
              size: 38,
            ),
          ),
        )
      ],
    );
  }

  // follow avatar qismi uchun
  Widget _followContainer() {
    return Container(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10, left: 5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5.0,
                  ),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          "https://source.unsplash.com/random/$index",),
                      radius: 30.0,
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/${index + 10}"),
                        radius: 10.0,
                      ),
                      bottom: 0,
                      right: 0,
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }

  // Bu Port Card uchun Context Widget Builderniki
  Widget _postCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: 550.0,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/2323"),
                  radius: 30.0,
                ),
                title: Text("Daisy"),
                subtitle: Text(
                  "34 mins ago",
                ),
                trailing: InkWell(
                  child: Icon(Icons.more_vert_sharp),
                ),
              ),
              Text(
                "Deserunt exercitation adipisicing id excepteur non veniam cillum.Deserunt exercitation adipisicing id excepteur non veniam cillum.Deserunt exercitation adipisicing id excepteur non veniam cillum.",
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
              _sizedBox(),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 250.0,
                      width: (MediaQuery.of(context).size.width) / 1.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random/1"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoPage(img: "https://source.unsplash.com/random/1"),
                          ));
                    },
                  ),
                  _sizedBox(),
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          height: 125,
                          width: (MediaQuery.of(context).size.width - 200) / 2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/2"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoPage(img: "https://source.unsplash.com/random/2"),
                          ));
                    },
                      ),
                      InkWell(
                        child: Container(
                          height: 125,
                          width: (MediaQuery.of(context).size.width - 200) / 2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/3"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoPage(img: "https://source.unsplash.com/random/3"),
                          ));
                    },
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Chip(
                    backgroundColor: Colors.brown.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    label: Text(
                      "#Emily_Vancomp",
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                  _sizedBoxWidth(),
                  Chip(
                    backgroundColor: Colors.brown.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    label: Text(
                      "#revenge",
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.reply,
                          color: Colors.grey,
                        ),
                        Text(
                          "1.7k",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: Colors.grey,
                        ),
                        Text(
                          "123",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          CupertinoIcons.heart_circle,
                          color: Colors.red,
                        ),
                        Text(
                          "3.3k",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox() {
    return SizedBox(
      height: 15,
    );
  }

  SizedBox _sizedBoxWidth() {
    return SizedBox(
      width: 10,
    );
  }
}
