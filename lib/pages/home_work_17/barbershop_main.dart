
import 'package:allhomework/pages/home_work_17/second_page.dart';
import 'package:flutter/material.dart';

// class BarBerShopMainPage extends StatelessWidget {
//   const BarBerShopMainPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

class BarBerShopMainPage extends StatefulWidget {
  const BarBerShopMainPage({Key? key}) : super(key: key);

  @override
  _BarBerShopMainPageState createState() => _BarBerShopMainPageState();
}

class _BarBerShopMainPageState extends State<BarBerShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(200, 56, 52, 67),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homework17/textikki.png"),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homework17/mainikkii.png"),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BarberShopSecondPage(),
                      ));
                },
                child: Text(
                  "Get a serious haircur",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "No, take me back to mommy",
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
