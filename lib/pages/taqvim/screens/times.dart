import 'dart:convert';

import 'package:allhomework/pages/taqvim/models/model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({Key? key}) : super(key: key);

  @override
  _PrayerTimeState createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Namoz vaqt"),
      ),
      body: Center(
        child: FutureBuilder(
          future: _getData(),
          builder: (context, AsyncSnapshot<List<PrayingTime>> snap) {
            var data = snap.data;
            PrayingTime vaqti = data![0];
            return snap.hasData
                ? ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      _setTime("Bomdod" , vaqti.timings!.fajr),
                      _setTime("Quyosh", vaqti.timings.sunrise),
                      _setTime("Peshin", vaqti.timings.dhuhr),
                      _setTime("Asr", vaqti.timings.asr),
                      _setTime("Shom", vaqti.timings.maghrib),
                      _setTime("Xufton", vaqti.timings.isha),
                    ],
                  )
                : Center(
                    child: CupertinoActivityIndicator(),
                  );
          },
        ),
      ),
    );
  }

  Future<List<PrayingTime>> _getData() async {
    var uri =
        ("http://api.aladhan.com/v1/calendarByCity?city=Tashkent&country=Uzbekistan&method=2&month=10&year=2021");
    Uri url = Uri.parse(uri);

    var res = await http.get(url);
    print("Data: ${res.body}");
    if (res.statusCode == 200) {
      return (jsonDecode(res.body)['data'] as List)
          .map((e) => PrayingTime.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato bor ${res.statusCode}");
    }
  }

  Padding _setTime(String title, String time) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.grey, width: 0.5)),
          title: Text(
            title,
          ),
          trailing: SizedBox(
            width: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time.substring(0, 6)),
              ],
            ),
          ),
          onTap: () {},
        ),
      );
}
