import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CoursesPage extends StatelessWidget {
  @override
  var _size;
  Widget build(BuildContext context) {
     _size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _showSliverAppBar(),
          _showSliverList(_size),
        ],
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

 
  _showSliverAppBar() => SliverAppBar(
        expandedHeight: 240.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,

       
        actions: [
          IconButton(icon: Icon(Icons.notifications_on), onPressed: () {})
        ],

     
        flexibleSpace: FlexibleSpaceBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: CircleAvatar(
                radius: 32.0,
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random/"),
              ),
            )
          ],
        )),
      );

  
  _showSliverList(sze) => SliverList(
        delegate: SliverChildListDelegate(
          [
            _header(),
            _setPopularCoursesText(),
            _footer(),
          ],
        ),
      );

  
  Widget _header() => Container(
        margin: EdgeInsets.symmetric(vertical: 32.0),
        width: _size.width * 1.0,
        height: _size.height * 0.2,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                width: _size.width * 0.6,
                height: _size.height * 0.2,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://source.unsplash.com/random/$index",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Shonda Rhymes",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Shonda describes what fuels her passion",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }),
      );


  Widget _footer() => Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        width: _size.width * 1.0,
        height: _size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                child: Container(
                  width: _size.width * 0.5,
                  height: _size.height * 0.3,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://source.unsplash.com/random/${index * 3 + 12}",
                            ),
                          ),
                        ),
                        width: _size.width * 0.5,
                        height: _size.height * 0.18,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        height: _size.height * 0.09,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Computer science",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "Console Development Basics with Unity",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      );

  
  Widget _setPopularCoursesText() => Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "Popular Courses",
          style: TextStyle(
              color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      );

 
  _bottomNavBar() => BottomNavigationBar(
        items: _bottomNavBarItems,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
      );

   List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Heart"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.copy_all), label: "List"),
    BottomNavigationBarItem(icon: Icon(Icons.settings_applications_outlined), label: "Settings"),
  ];
}
