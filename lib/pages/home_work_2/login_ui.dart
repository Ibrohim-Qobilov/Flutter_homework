import 'package:allhomework/pages/home_work_2/profile_page.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework1/imagesbir.jpeg"),
                          fit: BoxFit.cover)),
                  height: size.height * 0.4,
                  width: size.width * 1.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade400,
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Container(
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          " Exceptional",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Modern Clothings",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Text("-----------------------------------"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          "Shop for exceptional modern clothings",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          "for your every life",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 50,
                        width: 190,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[700]),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: Text("Go Shopping"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
