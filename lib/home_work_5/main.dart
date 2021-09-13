import 'dart:math';

import 'package:flutter/material.dart';

class HomeWorkDars9 extends StatefulWidget {
  @override
  _HomeWorkDars9State createState() => _HomeWorkDars9State();
}

class _HomeWorkDars9State extends State<HomeWorkDars9> {
  var radius;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
              Icons.menu,
              size: 30,
            ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.blue.shade900,
            height: 50,
            width: 400.0,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              alignment: Alignment.center,
              height: 30.0,
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search),Text("Search")],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ),
          preferredSize: Size.fromHeight(48.0),
        ),
        elevation: 0,
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              "Explore",
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.camera_alt,
              size: 30,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
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
        ],
      ),
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
