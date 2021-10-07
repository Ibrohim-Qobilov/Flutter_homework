
import 'package:allhomework/pages/home_work_18/screens/account_page.dart';
import 'package:allhomework/pages/home_work_18/screens/home_page.dart';
import 'package:allhomework/pages/home_work_18/screens/my_trip.dart';
import 'package:allhomework/pages/home_work_18/screens/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';

class HotelBottonNavBarPage extends StatefulWidget {
  const HotelBottonNavBarPage({Key? key}) : super(key: key);

  @override
  _HotelBottonNavBarPageState createState() => _HotelBottonNavBarPageState();
}

class _HotelBottonNavBarPageState extends State<HotelBottonNavBarPage> {
  int _currentIndexOfButtonBar = 0;
  List<Widget> _listOfPages = [];
  Widget? homePage, myTrip, notificationpage, accountPage;
  @override
  void initState() {
    homePage = HotelHomePage();
    myTrip = HotelMyTripPage();
    notificationpage = HotelNotificationPage();
    accountPage = HotelAccontPage();
    _listOfPages = [homePage!, myTrip!, notificationpage!, accountPage!];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPages[_currentIndexOfButtonBar],
      bottomNavigationBar:  _bottonNavBar(),
    );
  }

  Widget _bottonNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.travel_explore),
          label: "My trip",
        ),
        BottomNavigationBarItem(
          icon: Badge(
          badgeColor: Colors.red,
          badgeContent: Text("7"),
          child: Icon(Icons.notifications_active)),
      label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "accont",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: _currentIndexOfButtonBar,
      selectedItemColor: Colors.orangeAccent,
    
      onTap: (i) {
        setState(() {
          _currentIndexOfButtonBar = i;
        });
      },
    );
  }
}
