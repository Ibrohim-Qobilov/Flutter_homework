import 'package:flutter/material.dart';

class UchinchiPage extends StatelessWidget {
  const UchinchiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 56, 52, 67),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(200, 56, 52, 67),
        iconTheme: IconThemeData(
          color: Colors.yellow.shade500,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color.fromARGB(200, 56, 52, 67),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 100.0,
                        child: VerticalDivider(
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "What happens in the",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Barber Shop",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "homework17",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Stays in the",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Barber Shop",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "homework17"),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Unless you posted in all to all social retworks",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your choice",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Haircut",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  Text(
                    "Bread",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  Text(
                    "Trimming",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochbir.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochuch.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochikki.png"),
                        ),
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochtort.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochuch.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochikki.png"),
                        ),
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochtort.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochuch.png"),
                        ),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/homework17/sochikki.png"),
                        ),
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
