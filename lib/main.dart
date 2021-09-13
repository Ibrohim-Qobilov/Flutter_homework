import 'package:allhomework/pages/all_pages.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Works',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      // home: ProfilePage(),
      // home: LoginUi(),
      home: AllPage(),
    );
  }
}

