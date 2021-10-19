import 'package:allhomework/pages/car_json/model/model.dart';
import 'package:allhomework/pages/car_json/screens/second_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarJson extends StatefulWidget {
  const CarJson({Key? key}) : super(key: key);

  @override
  _CarJsonState createState() => _CarJsonState();
}

class _CarJsonState extends State<CarJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text(
        "Yolskwagen",
        style: TextStyle(color: Colors.black),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  FutureBuilder<List<Car>> _body() {
    return FutureBuilder(
      future: _getData(),
      builder: (context, AsyncSnapshot<List<Car>> snap) {
        var data = snap.data;
        if (snap.hasData) {
          return ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  height: 260.0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(data[index].make),
                          Text(data[index].model),
                        ],
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(data[index].imgUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(data[index]),
                      ));
                },
              );
            },
          );
        } else {
          return Center(
            child: CupertinoActivityIndicator(),
          );
        }
      },
    );
  }

  Future<List<Car>> _getData() async {
    var uri =
        ("https://private-anon-4ef747164d-carsapi1.apiary-mock.com/cars#");
    Uri url = Uri.parse(uri);

    var res = await http.get(url);
    print("Data: ${res.body}");
    if (res.statusCode == 200) {
      return (jsonDecode(res.body) as List)
          .map((e) => Car.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato bor ${res.statusCode}");
    }
  }
}
