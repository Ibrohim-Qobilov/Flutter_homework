
import 'package:allhomework/pages/furniture_shop/main.dart';
import 'package:allhomework/pages/games/main.dart';
import 'package:allhomework/pages/home_work_1/pages.dart';
import 'package:allhomework/pages/home_work_10/main.dart';
import 'package:allhomework/pages/home_work_11/main_page.dart';
import 'package:allhomework/pages/home_work_12/screens/main.dart';
import 'package:allhomework/pages/home_work_13/main.dart';
import 'package:allhomework/pages/home_work_14/main.dart';
import 'package:allhomework/pages/home_work_15/main.dart';
import 'package:allhomework/pages/home_work_16/car_shop_main.dart';
import 'package:allhomework/pages/home_work_17/barbershop_main.dart';
import 'package:allhomework/pages/home_work_18/screens/splash.dart';
import 'package:allhomework/pages/home_work_19/botton_nar_bar.dart';
import 'package:allhomework/pages/home_work_2/login_ui.dart';
import 'package:allhomework/pages/home_work_20/other.dart';
import 'package:allhomework/pages/home_work_22/coffeedeliverya.dart';
import 'package:allhomework/pages/home_work_3/uyga_ui_3.dart';
import 'package:allhomework/pages/home_work_4/sport/main.dart';
import 'package:allhomework/pages/home_work_5/main.dart';
import 'package:allhomework/pages/home_work_6/main.dart';
import 'package:allhomework/pages/home_work_7/main.dart';
import 'package:allhomework/pages/home_work_8/main.dart';
import 'package:allhomework/pages/home_work_9/main.dart';
import 'package:allhomework/pages/instagram/ui/splash_screen.dart';
import 'package:allhomework/pages/kema_shop/views/home_page.dart';
import 'package:allhomework/pages/mario/main.dart';
import 'package:allhomework/pages/taqvim/screens/bottom_nav_bar.dart';
import 'package:allhomework/pages/telegram/main.dart';
import 'package:allhomework/pages/tic_tac_toe/main.dart';
import 'package:allhomework/pages/valyuta_kurslari/main.dart';
import 'package:allhomework/pages_info/model/page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<PageUI> pageList = [
  new PageUI(
    "Container",
    "Uy ishi 1",
    "",
    "",
    Icon(CupertinoIcons.grid_circle),
    HomeWorkBir(),
    "",
  ),
  new PageUI(
    "Fashion shop",
    "Uy ishi 2",
    "03.09.2021",
    "",
    Icon(CupertinoIcons.shopping_cart),
    LoginUi(),
    "",
  ),
  new PageUI(
    "FW19",
    "Uy ishi 3",
    "04.09.2021",
    "",
    Icon(CupertinoIcons.shopping_cart),
    UygaUiPageUch(),
    "",
  ),
  new PageUI(
    "Sport",
    "uy ishi 4",
    "05.09.2021",
    "",
    Icon(CupertinoIcons.sportscourt_fill),
    SportMenPage(),
    "",
  ),
  new PageUI(
    "Srearch images",
    "Uy ishi 5",
    "06.09.2021",
    "",
    Icon(CupertinoIcons.camera_circle),
    HomeWorkDars9(),
    "",
  ),
  new PageUI(
    "Courses",
    "Uy ishi 6",
    "10.09.2021",
    "",
    Icon(Icons.school_outlined),
    CoursesPage(),
    "",
  ),
  new PageUI(
    "Foods",
    "Uy ishi 7",
    "13.09.2021",
    "",
    Icon(Icons.food_bank_outlined),
    FoodListPage(),
    "",
  ),
  new PageUI(
    "Coffee Bar",
    "Uy ishi 8",
    "14-09-2021",
    "",
    Icon(Icons.coffee_outlined),
    CoffeeBarMainPage(),
    "",
  ),
  new PageUI(
    "Car ",
    "Uy ishi 9",
    "15.09.2021",
    "",
    Icon(CupertinoIcons.car_detailed),
    MyHomePage(),
    "",
  ),
  new PageUI(
    "Login Page",
    "Uy ishi 10",
    "16.09.2021",
    "",
    Icon(Icons.email_outlined),
    LoginPage(),
    "",
  ),
  new PageUI(
    "Login Page",
    "Uy ishi 11",
    "18.09.2021",
    "",
    Icon(Icons.email_rounded),
    MainPage(),
    "19.09.2021",
  ),
  new PageUI(
    "Mario",
    "Uy ishi 12",
    "20.09.2021",
    "",
    Icon(Icons.games),
    SuperMarioMainPage(),
    "",
  ),
  new PageUI(
    "Car shop",
    "Uy ishi 13",
    "21-09-2021",
    "",
    Icon(CupertinoIcons.car_fill),
    MainPagePage(),
    "",
  ),
  new PageUI(
    "Order Foods",
    "Uy ishi 14",
    "13-09-2021",
    "",
    Icon(Icons.food_bank_sharp),
    Dars19Page(),
    "",
  ),
  new PageUI(
    "Find numbers",
    "Uy ishi 15",
    "14.09.2021",
    "",
    Icon(CupertinoIcons.gamecontroller_alt_fill),
    Dars20Oyin(),
    "",
  ),
  new PageUI(
    "Water shop",
    "Uy ishi 16",
    "15-09-2021",
    "",
    Icon(Icons.water),
    WaterMainPage(),
    "",
  ),
  new PageUI(
    "Instagram",
    "Uy ishi 17",
    "15-09-2021",
    "",
    Icon(CupertinoIcons.photo_camera),
    InstagramSplashScreen(),
    "",
  ),
  new PageUI(
    "Tesla",
    "Uy ishi 18",
    "21-09-2021",
    "",
    Icon(Icons.car_repair),
    CarShopMain(),
    "",
  ),
  new PageUI(
    "Telegram",
    "Uy ishi 19",
    "22-09-2021",
    "",
    Icon(Icons.car_repair),
    PlusMessengerMainPage(),
    "",
  ),
  new PageUI(
    "Barber shop",
    "Uy ishi 20",
    "23-09-2021",
    "",
    Icon(Icons.shop_outlined),
    BarBerShopMainPage(),
    "",
  ),
  new PageUI(
    "Otel",
    "Uy ishi 21",
    "24-09-2021",
    "",
    Icon(Icons.hotel),
    BookingHotelSplashScreen(),
    "",
  ),
  new PageUI(
    "Chat ",
    "Uy ishi 22",
    "27-09-2021",
    "",
    Icon(CupertinoIcons.chat_bubble_2_fill),
    ChatBottomNavigatorBarPage(),
    "",
  ),
  new PageUI(
    "Chat ",
    "Uy ishi 23",
    "28-09-2021",
    "",
    Icon(CupertinoIcons.chat_bubble_fill),
    OtherPage(),
    "",
  ),
  new PageUI(
    "Furniture shop",
    "Uy ishi 24",
    "30-09-2021",
    "",
    Icon(CupertinoIcons.shopping_cart),
    FurnitureShopMainPage(),
    "",
  ),
  new PageUI(
    "Kema",
    "Uy ishi 25",
    "04-10-2021",
    "",
    Icon(CupertinoIcons.placemark),
    KemaPage(),
    "",
  ),
  new PageUI(
    "Coffee",
    "Uy ishi 26",
    "05-10-2021",
    "",
    Icon(CupertinoIcons.placemark),
    CoffeeDeliveryA(),
    "",
  ),
  new PageUI(
    "Tic Tac Toe",
    "Uy ishi 27",
    "06-10-2021",
    "",
    Icon(CupertinoIcons.game_controller_solid),
    // TicTacTorGamePage(),
    TicTacToe(),
    "",
  ),
  new PageUI(
    "gogo",
    "Uy ishi 28",
    "07-10-2021",
    "",
    Icon(CupertinoIcons.game_controller_solid),
    // TicTacTorGamePage(),
    GamesPage(),
    "",
  ),
  new PageUI(
    "Valyuta",
    "Uy ishi 28",
    "07-10-2021",
    "",
    Icon(CupertinoIcons.money_dollar),
    // TicTacTorGamePage(),
    PhotoPage(),
    "",
  ),
  new PageUI(
    "Taqvim",
    "Uy ishi 29",
    "08-10-2021",
    "",
    Icon(Icons.school_sharp),
    // TicTacTorGamePage(),
    PrayerBottomNavigatorBarPage(),
    "",
  ),
];
