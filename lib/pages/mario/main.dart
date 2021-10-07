
import 'package:allhomework/pages/mario/play_game_page.dart';
import 'package:flutter/material.dart';


class SuperMarioMainPage extends StatefulWidget {
  @override
  _SuperMarioMainPageState createState() => _SuperMarioMainPageState();
}

class _SuperMarioMainPageState extends State<SuperMarioMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("Play"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => SuperMarioPlayGamePage()));
        },
      ),
    );
  }
}
