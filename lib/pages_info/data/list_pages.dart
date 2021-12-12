
import 'package:allhomework/pages/games/main.dart';
import 'package:allhomework/pages/home_work_10/main.dart';
import 'package:allhomework/pages/home_work_11/main_page.dart';
import 'package:allhomework/pages/home_work_12/screens/main.dart';
import 'package:allhomework/pages/home_work_13/main.dart';
import 'package:allhomework/pages/home_work_14/main.dart';
import 'package:allhomework/pages/home_work_15/main.dart';
import 'package:allhomework/pages/home_work_16/car_shop_main.dart';
import 'package:allhomework/pages/home_work_17/barbershop_main.dart';
import 'package:allhomework/pages/home_work_18/screens/splash.dart';
import 'package:allhomework/pages/home_work_20/other.dart';
import 'package:allhomework/pages/home_work_22/coffeedeliverya.dart';
import 'package:allhomework/pages/home_work_4/sport/main.dart';
import 'package:allhomework/pages/home_work_5/main.dart';
import 'package:allhomework/pages/home_work_6/main.dart';
import 'package:allhomework/pages/home_work_7/main.dart';
import 'package:allhomework/pages/home_work_8/main.dart';
import 'package:allhomework/pages/home_work_9/main.dart';
import 'package:allhomework/pages/kema_shop/views/home_page.dart';
import 'package:allhomework/pages/taqvim/screens/bottom_nav_bar.dart';
import 'package:allhomework/pages/tic_tac_toe/main.dart';
import 'package:allhomework/pages/valyuta_kurslari/main.dart';
import 'package:allhomework/pages_info/model/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<PageUI> pageList = [
  
  
  new PageUI(
    "Sport",
    "Amaliy ish 1",
    "05.09.2021",
    "",
    Icon(CupertinoIcons.sportscourt_fill),
    SportMenPage(),
    "",
  ),
  new PageUI(
    "Sreach images",
    "Amaliy ish 2",
    "06.09.2021",
    "",
    Icon(CupertinoIcons.camera_circle),
    HomeWorkDars9(),
    "",
  ),
  new PageUI(
    "Courses",
    "Amaliy ish 3",
    "10.09.2021",
    "",
    Icon(Icons.school_outlined),
    CoursesPage(),
    "",
  ),
  new PageUI(
    "Foods",
    "Amaliy ish 4",
    "13.09.2021",
    "",
    Icon(Icons.food_bank_outlined),
    FoodListPage(),
    "",
  ),
  new PageUI(
    "Coffee Bar",
    "Amaliy ish 5",
    "14-09-2021",
    "",
    Icon(Icons.coffee_outlined),
    CoffeeBarMainPage(),
    "",
  ),
  new PageUI(
    "Car ",
    "Amaliy ish 6",
    "15.09.2021",
    "",
    Icon(CupertinoIcons.car_detailed),
    MyHomePage(),
    "",
  ),
  new PageUI(
    "Login Page",
    "Amaliy ish 7",
    "16.09.2021",
    "",
    Icon(Icons.email_outlined),
    LoginPage(),
    "",
  ),
  new PageUI(
    "Login Page",
    "Amaliy ish 8",
    "18.09.2021",
    "",
    Icon(Icons.email_rounded),
    MainPage(),
    "19.09.2021",
  ),
  
  new PageUI(
    "Car Shop",
    "Amaliy ish 9",
    "13-09-2021",
    "",
    Icon(Icons.car_rental),
    MainPagePage(),
    "",
  ),
  new PageUI(
    "Order Foods",
    "Amaliy ish 10",
    "13-09-2021",
    "",
    Icon(Icons.food_bank_sharp),
    Dars19Page(),
    "",
  ),
  new PageUI(
    "Find numbers",
    "Amaliy ish 11",
    "14.09.2021",
    "",
    Icon(CupertinoIcons.gamecontroller_alt_fill),
    Dars20Oyin(),
    "",
  ),
  new PageUI(
    "Water shop",
    "Amaliy ish 12",
    "15-09-2021",
    "",
    Icon(Icons.water),
    WaterMainPage(),
    "",
  ),
  
  new PageUI(
    "Tesla",
    "Amaliy ish 13",
    "21-09-2021",
    "",
    Icon(Icons.car_repair),
    CarShopMain(),
    "",
  ),
  
  new PageUI(
    "Barber shop",
    "Amaliy ish 14",
    "23-09-2021",
    "",
    Icon(Icons.shop_outlined),
    BarBerShopMainPage(),
    "",
  ),
  new PageUI(
    "Otel",
    "Amaliy ish 15",
    "24-09-2021",
    "",
    Icon(Icons.hotel),
    BookingHotelSplashScreen(),
    "",
  ),
  
  new PageUI(
    "Chat ",
    "Amaliy ish 16",
    "28-09-2021",
    "",
    Icon(CupertinoIcons.chat_bubble_fill),
    OtherPage(),
    "",
  ),
  
  new PageUI(
    "Kema",
    "Amaliy ish 17",
    "04-10-2021",
    "",
    Icon(CupertinoIcons.placemark),
    KemaPage(),
    "",
  ),
  new PageUI(
    "Coffee",
    "Amaliy ish 18",
    "05-10-2021",
    "",
    Icon(CupertinoIcons.placemark),
    CoffeeDeliveryA(),
    "",
  ),
  new PageUI(
    "Tic Tac Toe",
    "Amaliy ish 19",
    "06-10-2021",
    "",
    Icon(CupertinoIcons.game_controller_solid),
    // TicTacTorGamePage(),
    TicTacToe(),
    "",
  ),
  new PageUI(
    "gogo",
    "Amaliy ish 20",
    "07-10-2021",
    "",
    Icon(CupertinoIcons.game_controller_solid),
    // TicTacTorGamePage(),
    GamesPage(),
    "",
  ),
  new PageUI(
    "Valyuta",
    "Amaliy ish 21",
    "07-10-2021",
    "",
    Icon(CupertinoIcons.money_dollar),
    // TicTacTorGamePage(),
    PhotoPage(),
    "",
  ),
  new PageUI(
    "Taqvim",
    "Amaliy ish 22",
    "08-10-2021",
    "",
    Icon(Icons.school_sharp),
    // TicTacTorGamePage(),
    PrayerBottomNavigatorBarPage(),
    "",
  ),
  
 
];
