import 'package:flutter/material.dart';

class Sport {
  String title;
  String imageUrl;
  MaterialColor color;

  Sport(this.title, this.color, this.imageUrl);
}

List<Sport> getSport() {
  List<Sport> sports = [];
  sports.add(new Sport("Swimming", Colors.indigo, "assets/images/homework4/swimming.png"));
  sports.add(new Sport("Running", Colors.green, "assets/images/homework4/running.png"));
  sports.add(new Sport("Football", Colors.pink, "assets/images/homework4/foodball.png"));
  sports.add(new Sport("Basketball", Colors.blue, "assets/images/homework4/baskitboll.png"));
  sports.add(new Sport("Tennis", Colors.green, "assets/images/homework4/tennes.png"));
  sports.add(new Sport("Gym", Colors.blue, "assets/images/homework4/jim.png"));
  sports.add(new Sport("Golf", Colors.orange, "assets/images/homework4/golf.png"));
  sports.add(new Sport("Cycling", Colors.orange, "assets/images/homework4/cycling.png"));

  return sports;
}
