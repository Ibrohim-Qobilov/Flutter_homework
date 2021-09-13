
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> _bottomNavBarItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shop"),
  BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
  BottomNavigationBarItem(
      icon: (Icon(Icons.notifications_active)), label: "Notification"),
];

List<BottomNavigationBarItem> get bottomNavBarItemsCoffee => _bottomNavBarItems;

BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
      items: bottomNavBarItemsCoffee,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
    );

BottomNavigationBar get bottomNavigationBarCoffee => _bottomNavigationBar();
