import 'package:allhomework/pages/car_json/model/model.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  Car car;
  SecondPage(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.model),),
    );
  }
}
