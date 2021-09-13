
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List<BottomNavigationBarItem> _bottomNavigationBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: "Home",
  ),

  const BottomNavigationBarItem(
    icon: Icon(Icons.bookmark_add),
    label: "Bookmarks",
  ),

  const BottomNavigationBarItem(
    icon: Icon(Icons.add_a_photo_outlined),
    label: "Add",
  ),

  BottomNavigationBarItem(
    icon:  Icon(CupertinoIcons.text_bubble),
    label: "Message",
  ),

  const BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.text_aligncenter),
    label: "More",
  ),
];

List<BottomNavigationBarItem> get bottomNavigationBarItems =>
    _bottomNavigationBarItems;

List<String> _bottomNavigationBarTitles = [
  "Explore",
  "Bookmarks",
  "Add",
  "Message",
  "More",
];

List<String> get titles => _bottomNavigationBarTitles;
