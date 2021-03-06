
import 'package:allhomework/pages_info/ui/list_pages.dart';
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
        accentColor: Color(0xFFffac1b),
        primaryColor: Color(0xFF1a5cdb),
        disabledColor: Color(0xFFf4f1fd),
        buttonColor: Color(0xFF3b3d41),
        primarySwatch: Colors.blue,
        
      ),
     
      home: PagesList(),
    );
  }
}

