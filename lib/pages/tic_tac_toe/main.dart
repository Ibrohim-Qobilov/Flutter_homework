import 'dart:math';
import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  bool onTurn = true; // bitinchi o'yinchi o
  List<String> displayX0 = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  var myTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 30,
  );

  int xNatija = 0;
  int oNatija = 0;
  int filledBoxes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          _hisobDoskasi(),
          _asosiyDoska(),
          _bottom(),
          _sizeBox(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Tik Tac Toe",
        style: TextStyle(fontSize: 30, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  Widget _hisobDoskasi() {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Player X",
                    style: myTextStyle,
                  ),
                  Text(
                    xNatija.toString(),
                    style: myTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Player O",
                    style: myTextStyle,
                  ),
                  Text(
                    oNatija.toString(),
                    style: myTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _asosiyDoska() {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: 9,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _tapped(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: Text(
                    displayX0[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _bottom() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.black)),
      ),
      onPressed: () {
        setState(() {
          _clear();
        });
      },
      child: Text(
        "Play again",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _sizeBox() {
    return SizedBox(
      height: 40,
    );
  }

  void _tapped(index) {
    setState(
      () {
        if (onTurn && displayX0[index] == '') {
          displayX0[index] = 'O';
          filledBoxes += 1;
        } else if (!onTurn && displayX0[index] == '') {
          displayX0[index] = 'X';
          filledBoxes += 1;
        }
        onTurn = !onTurn;
        _checkWinner();
      },
    );
  }

  void _checkWinner() {
    // row birinchi
    if (displayX0[0] == displayX0[1] &&
        displayX0[0] == displayX0[2] &&
        displayX0[0] != '') {
      _checkWinDialog(displayX0[0]);
    }
    // row ikkinchi
    if (displayX0[3] == displayX0[4] &&
        displayX0[3] == displayX0[5] &&
        displayX0[3] != '') {
      _checkWinDialog(displayX0[3]);
    }
    // row uchunchi
    if (displayX0[6] == displayX0[7] &&
        displayX0[6] == displayX0[8] &&
        displayX0[6] != '') {
      _checkWinDialog(displayX0[6]);
    }
    // colunm 1
    if (displayX0[0] == displayX0[3] &&
        displayX0[0] == displayX0[6] &&
        displayX0[0] != '') {
      _checkWinDialog(displayX0[0]);
    }
    // colunm 2
    if (displayX0[1] == displayX0[4] &&
        displayX0[1] == displayX0[7] &&
        displayX0[1] != '') {
      _checkWinDialog(displayX0[1]);
    }
    // colunm 3
    if (displayX0[2] == displayX0[5] &&
        displayX0[2] == displayX0[8] &&
        displayX0[2] != '') {
      _checkWinDialog(displayX0[2]);
    }
    // check diagonal
    if (displayX0[6] == displayX0[4] &&
        displayX0[6] == displayX0[7] &&
        displayX0[6] != '') {
      _checkWinDialog(displayX0[6]);
    }
    // check diagonal
    if (displayX0[0] == displayX0[4] &&
        displayX0[0] == displayX0[8] &&
        displayX0[0] != '') {
      _checkWinDialog(displayX0[0]);
    } else if (filledBoxes == 9) {
      _showDrawDialog();
    }
  }

  void _checkWinDialog(winner) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                _clear();
                Navigator.of(context).pop();
              },
              child: Text("Play again"),
            ),
          ],
          title: Text("You are winner:  " + winner),
        );
      },
    );

    if (winner == 'O') {
      oNatija += 1;
    } else if (winner == 'X') {
      xNatija += 1;
    }
  }

  void _showDrawDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                _clear();
                Navigator.of(context).pop();
              },
              child: Text("Play again"),
            ),
          ],
          title: Text("forces are equal"),
        );
      },
    );
  }

  void _clear() {
    for (int i = 0; i < 9; i++) {
      setState(
        () {
          displayX0[i] = '';
        },
      );
      filledBoxes = 0;
    }
  }
}
