
import 'package:allhomework/pages/home_work_15/list.dart';
import 'package:allhomework/pages/home_work_15/model.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';



class WaterShopBasketPage extends StatefulWidget {
  @override
  _WaterShopBasketPageState createState() => _WaterShopBasketPageState();
}

class _WaterShopBasketPageState extends State<WaterShopBasketPage> {
  var _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _getAppBar(),
      body: _getOrderedList(),
      bottomNavigationBar: _getBottomNavigationBar(),
    );
  }

  AppBar _getAppBar() => AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Basket",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
                Icon(Icons.shopping_cart_outlined),
              )
        ],
      );

  Container _getBottomNavigationBar() => Container(
        height: _size.height * 0.12,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        decoration: _getBoxDecoration(Colors.pinkAccent, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _setPriceText(58, Colors.white),
            ElevatedButton(
              onPressed: () {},
              child: Text("Pay"),
              style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 42.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0))),
            ),
            
          ],
        ),
        
      );
      

  ListView _getOrderedList() => ListView.builder(
      itemCount: waterList.length,
      itemBuilder: (context, index) {
        Water water = waterList[index];
        return _getOrderedWaterLayout(water);
      });

  _getOrderedWaterLayout(Water water) => Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: _getBoxDecoration(Colors.white, 12.0),
          height: _size.height * 0.16,
          child: Row(
            children: [
              Container(
                width: _size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(water.imageUrl),
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      water.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21.0,
                      ),
                    ),
                    Text("Bottle ${water.litre} L"),
                    Container(
                      width: _size.width * 0.55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _setPriceText(water.price, Colors.black),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                child: Text("-",style: TextStyle(fontSize: 30)),
                              ),
                              SizedBox(width: 10,),
                              Text("1"),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                child: Text("+",style: TextStyle(fontSize: 30),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Decoration _getBoxDecoration(Color color, double radius) => BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      );

  Text _setPriceText(double price, Color color) => Text(
        "\$$price",
        style: TextStyle(
          color: color,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      );
}