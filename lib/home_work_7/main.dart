import 'package:allhomework/home_work_7/food_list.dart';
import 'package:allhomework/home_work_7/food_model.dart';
import 'package:allhomework/home_work_7/horizontal.dart';
import 'package:flutter/material.dart';


class FoodListPage extends StatelessWidget {
  var _context;
  var _size;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: _bodyWithCustomScrollView(_size),
    );
  }

  _bodyWithCustomScrollView(Size size) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        _sliverAppBar(),
        _showSliverListWithFoods(),
      ],
    );
  }
 
  _sliverAppBar() => SliverAppBar(
        stretch: true,
        floating: true,
       
        expandedHeight: _size.height * 0.5,
        backgroundColor: Colors.white,
        flexibleSpace: FlexibleSpaceBar(
         
          title: _appBarTitle(),
          centerTitle: true,

       
          stretchModes: [
            
            StretchMode.blurBackground,

           
            StretchMode.fadeTitle,
            StretchMode.zoomBackground
          ],
          background: Image.network(
            "https://images.unsplash.com/photo-1546993641-097e8366bba0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fGZhc3QlMjBmb29kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            fit: BoxFit.cover,
          ),
        ),
      );

  
  _appBarTitle() => Container(
       
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Expanded(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Evos \n",
                  style: TextStyle(fontSize: 16.0, color: Colors.black, ),
                ),
                TextSpan(
                  text: "Juda mazzalik Taomlar markazi",
                  style: TextStyle(
                    fontSize: 9.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ])),
            ),

            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    _context,
                    MaterialPageRoute(
                        builder: (_) => FoodHorizontalListPage()));
              },
              mini: true,
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
            )
          ],
        ),
      );


  _showSliverListWithFoods() => SliverList(
          delegate: SliverChildListDelegate(
        foodList.map((food) => _getFoodInfoTemplate(food)).toList(),
      ));

 
  Widget _getFoodInfoTemplate(Food food) => Container(
        height: _size.width * 0.32,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        child: Row(
          children: [

            
            Container(
              height: _size.width * 0.28,
              width: _size.width * 0.28,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(food.imageUrl),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0)),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "${food.name} \n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(text: "${food.subtitle}"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _getOrder(food);
                    },
                    child: Text("Buyurtma"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  _getOrder(Food food) {
    showDialog(
        context: _context,
        builder: (_context) {
          return AlertDialog(
            title: Text(food.name),
            content: Container(
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "${food.subtitle} \n"),
                TextSpan(text: "${food.price} Dollar \n\n"),
                TextSpan(text: "Yana Buyurtma berish"),
              ])),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: Text("No"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Text("Yes"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ],
          );
        });
  }

}
