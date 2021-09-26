import 'package:allhomework/home_work_18/screens/the_end.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HotelFilterPage extends StatefulWidget {
  const HotelFilterPage({Key? key}) : super(key: key);

  @override
  _HotelFilterPageState createState() => _HotelFilterPageState();
}

class _HotelFilterPageState extends State<HotelFilterPage> {
  RangeValues _values = RangeValues(100.0, 1500.0);
  
  Color _white = Colors.white;
  Color _black = Colors.black;
  Color _deepOrange = Colors.deepOrange;
  Color _grey = Colors.grey;
  Color _transparent = Colors.transparent;
  bool isChecked = false;
  bool isCheckedOne = false;
  bool isCheckedTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _body(),
    );
  }

  AppBar _getAppBar() => AppBar(
        iconTheme: IconThemeData(color: _black),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: _white,
        elevation: 12.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filter",
              style: TextStyle(color: Colors.black),
            ),
            InkWell(
              child: Text(
                "clear",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      );

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "\S Price",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        RangeSlider(
            activeColor: Colors.red,
            values: _values,
            max: 1500,
            min: 100,
            onChanged: (value) {
              setState(() {
                _values = value;
                print(_values.start);
                print(_values.end);
              });
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: Text(
                  "\$ ${_values.start.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: Text(
                  "\$ ${_values.end.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 5,
          color: Colors.grey.shade300,
        ),
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Free Break Fast",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Free wifi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isCheckedOne,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedOne = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 5,
          color: Colors.grey.shade300,
        ),
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sunrise check-in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isCheckedTwo,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedTwo = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 5,
          color: Colors.grey.shade300,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "user Ratings",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Container(
                height: 30,
                width: 50,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 15,
                      color: Colors.white,
                    ),
                    Text("3"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Container(
                height: 30,
                width: 50,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 15,
                    ),
                    Text("4"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              child: Container(
                height: 30,
                width: 50,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 15,
                    ),
                    Text("5"),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 5,
          color: Colors.grey.shade300,
        ),
        ListTile(
          title: Text(
            "Other Facilities",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Packing Pool Bar",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {},
        ),
        Container(
          height: 5,
          color: Colors.grey.shade300,
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 50,
            width: 300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TheEndPage(),
                      ));
                },
                child: Text(
                  "Apply",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // side: BorderSide(width: 2.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
