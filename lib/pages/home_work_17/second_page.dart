
import 'package:allhomework/pages/home_work_17/uchinchi_page.dart';
import 'package:flutter/material.dart';

class BarberShopSecondPage extends StatefulWidget {
  const BarberShopSecondPage({Key? key}) : super(key: key);

  @override
  _BarberShopSecondPageState createState() => _BarberShopSecondPageState();
}

class _BarberShopSecondPageState extends State<BarberShopSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 56, 52, 67),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))],
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(200, 56, 52, 67),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 20),
              child: Text(
                "Hey,",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, left: 20),
              child: Text(
                "Derek",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white,
              endIndent: 20,
              indent: 20,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Serveces",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/homework17/wash.png",
                              ),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.grey),
                        alignment: Alignment.bottomCenter,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UchinchiPage(),
                            ));
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/homework17/bir.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                          color: Colors.grey),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/homework17/ikki.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                          color: Colors.grey),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/homework17/uch.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                          color: Colors.grey),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
