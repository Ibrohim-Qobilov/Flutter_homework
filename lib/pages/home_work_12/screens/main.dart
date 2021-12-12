
import 'package:allhomework/pages/home_work_12/screens/login_page.dart';
import 'package:allhomework/pages/home_work_12/screens/login_page.dart';
import 'package:flutter/material.dart';

class MainPagePage extends StatefulWidget {
  const MainPagePage({Key? key}) : super(key: key);

  @override
  _MainPagePageState createState() => _MainPagePageState();
}

class _MainPagePageState extends State<MainPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(''),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(80),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Avto Shop in Tashkent",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Let us find you a car for your interest",
                style: TextStyle(
                  color: Colors.white.withOpacity(.7),
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Go",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
