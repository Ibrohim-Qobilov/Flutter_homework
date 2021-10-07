import 'package:flutter/material.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  int t = 10, p = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Games"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(300, 60)),
                  onPressed: () {
                    setState(() {
                      t += 1;
                      p -= 1;
                      if (p == 3) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text('Player1 yutdi'),
                                actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('ok'))
                                  ],
                                )
                                );
                      } else if (t == 3) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text('Player2 yutdi'),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('ok'))
                                  ],
                                ));
                        t = 10;
                        p = 10;
                      }
                    });
                  },
                  child: Text("player 1")),
            ),
            flex: t,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Colors.greenAccent,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(300, 60)),
                  onPressed: () {
                    setState(() {
                      p += 1;
                      t -= 1;
if (p == 3) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text('Player1 yutdi'),
                                actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('ok'))
                                  ],
                                )
                                );
                      } else if (t == 3) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text('Player2 yutdi'),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('ok'))
                                  ],
                                ));
                        t = 10;
                        p = 10;
                      }
                    });
                  },
                  child: Text("player 2")),
            ),
            flex: p,
          ),
        ],
      ),
    );
  }
}
