import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Back",
            style: TextStyle(fontSize: 18),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                size: 40,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 64.0,
                backgroundImage:
                    AssetImage("assets/images/homework4/money.png"),
                child: Transform.translate(
                  offset: const Offset(32.0, -56.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Applied",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "28",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Reviewed",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "73",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Contocted",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "18",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Text(
                  "Complete Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 180.0,
                      width: 180,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.school,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Education",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("02 Steps\nlent"),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text("___________"),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 180.0,
                      width: 180,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Column(
                          children: [SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Container(
                                height: 50.0,
                                width: 50,
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.business_center_sharp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Professional",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("04 Steps\nlent"),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text("___________"),
                            )],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text("Buy Pro \$23.49"),
            ],
          ),
        ),
      ),
    );
  }
}
