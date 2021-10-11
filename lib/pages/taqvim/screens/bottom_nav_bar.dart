
import 'package:allhomework/pages/taqvim/screens/compass.dart';
import 'package:allhomework/pages/taqvim/screens/prayer_menu.dart';
import 'package:allhomework/pages/taqvim/screens/prayer_search.dart';
import 'package:allhomework/pages/taqvim/screens/times.dart';
import 'package:flutter/material.dart';


class PrayerBottomNavigatorBarPage extends StatefulWidget {
  const PrayerBottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  _PrayerBottomNavigatorBarPageState createState() =>
      _PrayerBottomNavigatorBarPageState();
}

class _PrayerBottomNavigatorBarPageState
    extends State<PrayerBottomNavigatorBarPage> {
  int _currentIndexBottomNavigatorBar = 0;
  List<Widget> _listOfPage = [];
  Widget? prayerPage, compassPage, searchPage, menuPage;
  @override
  void initState() {
    prayerPage = PrayerTime();
    compassPage = PrayerCompossPage();
    searchPage = PrayerSearchPage();
    menuPage = PrayerMenuPage();
    _listOfPage = [prayerPage!, compassPage!, searchPage!, menuPage!];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_currentIndexBottomNavigatorBar],
      bottomNavigationBar: _bottonNavigationbar(),
    );
  }

  Widget _bottonNavigationbar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.maps_home_work),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 30,
              child: Icon(Icons.search),),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndexBottomNavigatorBar,
      selectedItemColor: Colors.black,
      onTap: (i) {
        setState(() {
          _currentIndexBottomNavigatorBar = i;
        });
      },
    );
  }
}
