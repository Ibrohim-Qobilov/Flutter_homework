
import 'package:allhomework/pages/home_work_16/second_page.dart';
import 'package:flutter/material.dart';

class CarShopMain extends StatelessWidget {
  const CarShopMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 39,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework16/tesla.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.car_rental_sharp,
                size: 30,
              ),
              title: Text(
                "Car",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                "Settiing",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
              title: Text(
                "Shop",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Oldingi",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/homework16/logo.png"),
                          ),
                          color: Colors.grey.shade300,
                        )),
                    Text(
                      "Tesla Motors",
                      style: TextStyle(
                        fontFamily: "homework",
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  "keyingi",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    image: DecorationImage(
                      image: AssetImage("assets/images/homework16/tesla.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarSecondPage(),
                    ));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Discovery", style: TextStyle(fontSize: 20)),
                ),
                Row(children: [
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 5,
                    width: 40,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("1/6"),
                  ),
                ])
              ],
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 160,
                          width: 160.0,
                          child: Image.asset(
                            "assets/images/homework16/tesla.jpeg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        "Tesla",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 160,
                          width: 160.0,
                          child: Image.asset(
                            "assets/images/homework16/interface.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Interface",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 160,
                        width: 160.0,
                        child: Image.asset(
                          "assets/images/homework16/doors.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      "Doors",
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
