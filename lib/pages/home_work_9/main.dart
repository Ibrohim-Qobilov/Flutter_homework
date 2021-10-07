
import 'package:allhomework/pages/home_work_9/screens/car_info.dart';
import 'package:flutter/material.dart';

import 'car_info/strings.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          Car.app_name,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RefreshIndicator(
        child: Center(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return insideListView(context, index);
            },
            itemCount: Car.CAR_NAMES.length,
          ),
        ),
        onRefresh: stateYangilash,
      ),
    );
  }

  Future<void> stateYangilash() {
    return Future.delayed(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  Widget insideListView(BuildContext context, index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              "assets/images/homework5/${Car.CAR_NAMES[index].toLowerCase()}$index.jpeg"),
        ),
        title: Text(
          Car.CAR_NAMES[index],
        ),
        subtitle: Text(Car.CAR_YEARS[index]),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarInfo(index),
            ),
          );
        },
      ),
    );
  }
}