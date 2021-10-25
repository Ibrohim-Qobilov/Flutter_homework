import 'dart:math';

import 'package:flutter/material.dart';

class HotelMyTripPage extends StatefulWidget {
  @override
  _HotelMyTripPageState createState() => _HotelMyTripPageState();
}

class _HotelMyTripPageState extends State<HotelMyTripPage> {
  var radius;
  PageStorageKey pageStrKey = PageStorageKey("key1");
  PageStorageBucket pageStrBucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(),
      body: _body(),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage("assets/images/homework18/hotelbir.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "     Ibrohim Qobilov",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.hotel_rounded),
              title: Text("Hotels"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Maps"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 30,
      title: Text(
        "My Trip",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ))
      ],
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: PageStorage(
            bucket: pageStrBucket,
            child: GridView.builder(
              key: pageStrKey,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 128.5,
                                  height: 128.5,
                                  child: FadeInImage(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 1 * 751}"),
                                    placeholder: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 1 * 61 * 92}"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 128.5,
                                  height: 128.5,
                                  child: FadeInImage(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 1 * 45 * 2}"),
                                    placeholder: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 1 * 32 * 2}"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 257.0,
                              height: 257.0,
                              child: FadeInImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 + 25456 * 9}"),
                                placeholder: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 + 161 - 9}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 128.5,
                              height: 128.5,
                              child: FadeInImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 * 652}"),
                                placeholder: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 * 9}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 128.5,
                              height: 128.5,
                              child: FadeInImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 + 716}"),
                                placeholder: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 952}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 128.5,
                              height: 128.5,
                              child: FadeInImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 1 * 61}"),
                                placeholder: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 58}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                width: 257.0,
                                height: 257.0,
                                child: FadeInImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 26845}"),
                                  placeholder: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 1460}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 128.5,
                                    height: 128.5,
                                    child: FadeInImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/${index * 7261}"),
                                      placeholder: NetworkImage(
                                          "https://source.unsplash.com/random/${index + 95312}"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 128.5,
                                    height: 128.5,
                                    child: FadeInImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/${index + 43152}"),
                                      placeholder: NetworkImage(
                                          "https://source.unsplash.com/random/${index + 563132}"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                width: 128.5,
                                height: 128.5,
                                child: FadeInImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 78641}"),
                                  placeholder: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 13592}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                width: 128.5,
                                height: 128.5,
                                child: FadeInImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 8371}"),
                                  placeholder: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 5692}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                width: 128.5,
                                height: 128.5,
                                child: FadeInImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 63471}"),
                                  placeholder: NetworkImage(
                                      "https://source.unsplash.com/random/${index + 75692}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              },
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }

  randonColor() {
    List<Color> colors = [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.teal,
      Colors.green,
      Colors.cyan,
      Colors.purple,
      Colors.grey.shade400,
    ];
    int randomSon = Random().nextInt(8);
    return colors[randomSon];
  }
}
