import 'package:allhomework/home_work_19/screens/call_page.dart';
import 'package:allhomework/home_work_19/screens/chat_page.dart';
import 'package:allhomework/home_work_19/screens/clock_page.dart';
import 'package:allhomework/home_work_19/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

class ChatBottomNavigatorBarPage extends StatefulWidget {
  const ChatBottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  _ChatBottomNavigatorBarPageState createState() =>
      _ChatBottomNavigatorBarPageState();
}

class _ChatBottomNavigatorBarPageState
    extends State<ChatBottomNavigatorBarPage> {
  int _currentIndexBottomNavigatorBar = 0;
  List<Widget> _listOfPage = [];
  Widget? chatPage, clockPage, callPage, profilePage;
  @override
  void initState() {
    chatPage = ChatPage();
    clockPage = ClockPage();
    callPage = CallPage();
    profilePage = ProfilesPage();
    _listOfPage = [chatPage!, clockPage!, callPage!, profilePage!];
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
            icon: Icon(Icons.chat_rounded),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule_rounded),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 30,
              child: Icon(Icons.call),),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
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
