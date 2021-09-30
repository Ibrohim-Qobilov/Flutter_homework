import 'package:allhomework/home_work_21/home_page.dart';
import 'package:allhomework/home_work_21/play_list_page.dart';
import 'package:allhomework/home_work_21/profile.dart';
import 'package:allhomework/home_work_21/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndexBottomNavigatorBar = 0;
  List _listOfPage = [];
  Widget? homepage, playerpage, searchpage, profilepage;
  @override
  void initState() {
    homepage = HomePage();
    playerpage = PlayerPage();
    searchpage = SearchPage();
    profilepage = ProfilePage();
    _listOfPage = [
      homepage!,
      playerpage!,
      searchpage!,
      profilepage!,
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_currentIndexBottomNavigatorBar],
      bottomNavigationBar: _bottomNavBarPage(),
    );
  }

  _bottomNavBarPage() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.play_circle),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search_circle),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          label: "",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndexBottomNavigatorBar,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.pinkAccent,
      elevation: 30,
      onTap: (i) {
        setState(() {
          _currentIndexBottomNavigatorBar = i;
        });
      },
    );
  }
}
