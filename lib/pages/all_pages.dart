import 'package:allhomework/home_work_1/pages.dart';
import 'package:allhomework/home_work_2/login_ui.dart';
import 'package:allhomework/home_work_3/uyga_ui_3.dart';
import 'package:allhomework/home_work_4/sport/main.dart';
import 'package:allhomework/home_work_5/main.dart';
import 'package:allhomework/home_work_6/main.dart';
import 'package:allhomework/home_work_7/main.dart';
import 'package:allhomework/home_work_8/main.dart';
import 'package:allhomework/home_work_9/main.dart';
import 'package:allhomework/home_work_10/main.dart';
import 'package:allhomework/home_work_11/main_page.dart';
import 'package:allhomework/home_work_12/screens/main.dart';
import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeWorkBir(),
                      ),
                    );
                  },
                  child: Text(" Uy ishi 1"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },
                  child: Text(" Uy ishi 2"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UygaUiPageUch()));
                  },
                  child: Text("Uy ishi 3"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SportMenPage()));
                  },
                  child: Text("Uy ishi 4"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeWorkDars9()));
                  },
                  child: Text("Uy ishi 5"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CoursesPage()));
                  },
                  child: Text("Uy ishi 6"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FoodListPage()));
                  },
                  child: Text("Uy ishi 7"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoffeeBarMainPage()));
                  },
                  child: Text("Uy ishi 8"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  child: Text("Uy ishi 9"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text("Uy ishi 10"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  },
                  child: Text("Uy ishi 11"),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPagePage(),
                      ),
                    );
                  },
                  child: Text("Uy ishi 12"),
                ),
              ),
              SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
    );
  }
}
