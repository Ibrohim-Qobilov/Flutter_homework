import 'package:allhomework/home_work_12/data/category_list.dart';
import 'package:allhomework/home_work_12/models/category_model.dart';
import 'package:allhomework/home_work_12/screens/explore.dart';
import 'package:allhomework/home_work_12/screens/bottom_nav_bar.dart';
import 'package:allhomework/home_work_12/widgets/home_page_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size? _size;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    _size = MediaQuery.of(context).size;
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      appBar: homePageAppBar(context, _currentIndex),
      bottomNavigationBar: _getBottomNavigationBar(),
      body: getExplorePage(context, _getCategoryList()),
    );
  }

  /// BottomNavigationBar
  BottomNavigationBar _getBottomNavigationBar() => BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      );

  /// Set State qilish kerak!
  int _currentIndexCategoty = 0;

  Container _getCategoryList() => Container(
    margin: const EdgeInsets.only(top: 32.0),
        height: 48.0,
        child: ListView.builder(
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Category category = categoryList[index];
            return TextButton(
              child: Text(
                category.name,
                style: TextStyle(
                    color: (_currentIndexCategoty == index)
                        ? Colors.black
                        : Colors.grey,
                fontWeight: FontWeight.bold,
                  fontSize:18.0,
                ),

              ),
              onPressed: () {
                setState(() {
                  _currentIndexCategoty = index;
                });
              },
            );
          },
        ),
      );
}
