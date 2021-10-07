import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class Dars20Oyin extends StatefulWidget {
  @override
  _Dars20OyinState createState() => _Dars20OyinState();
}

class _Dars20OyinState extends State<Dars20Oyin> {
  int _randomNumber = 1 + Random().nextInt(11);
  int _chance = 3;
  var _size;
  var _init;
  var _end;

  List<bool> _isPressedList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    true
  ];

  @override
  Widget build(BuildContext context) {
    print("Random number: $_randomNumber");
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Son top ")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Son top",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          Container(height: _size.height * 0.80, child: _getNumber()),
        ],
      ),
    );
  }

  GridView _getNumber() => GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 60.0),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        crossAxisCount: 5,
        children: List.generate(11, (index) => _getNumberButton(index + 1)),
      );

  ElevatedButton _getNumberButton(int number) {
    return ElevatedButton(
        style: _getButtonStyle(number),
        onPressed: (_isPressedList[number - 1])
            ? () {
                if (number == 11) {
                  for (int i = 0; i < 11; i++) _isPressedList[i] = !_isPressedList[i];
                  _init = DateTime.now().second;
                } else {
                  if (_randomNumber == number) {
                    {
                      _end = DateTime.now().second;
                      _showDialog(true);
                    }
                  } else if (_randomNumber > number) {
                    _chance--;
                   
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.INFO_REVERSED,
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      width: 280,
                      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                      headerAnimationLoop: false,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'INFO',
                      desc: 'Bu sondan katta...',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  } else if (_randomNumber < number) {
                    _chance--;
                    
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.INFO_REVERSED,
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      width: 280,
                      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                      headerAnimationLoop: false,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'INFO',
                      desc: 'Bu sondan kichik son...',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  }
                }

                if (_chance == 0) {
                  _end = DateTime.now().second;
                  _showDialog(false);
                }
                _isPressedList[number - 1] = false;
                setState(() {});
              }
            : null,
        child: Text((number == 11) ? "" : "$number"));
  }

  ButtonStyle _getButtonStyle(int index) => OutlinedButton.styleFrom(
        primary: (index == 11) ? Colors.redAccent : Colors.pinkAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      );

  void _showDialog(bool isWon) {
    int time = _end - _init;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: isWon ? Text("Siz yutingiz") : Text("Yana urinib koring"),
              content: Container(
                child: Text("Vaqt: $time soniya"),
              ),
            ));
  }
}