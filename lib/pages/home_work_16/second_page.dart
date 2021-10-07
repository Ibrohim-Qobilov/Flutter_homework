import 'package:flutter/material.dart';

class CarSecondPage extends StatelessWidget {
  const CarSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/homework16/logo.png"),
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
            IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_rounded))
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/homework16/teslaikki.jpeg",
                  ),
                  fit: BoxFit.contain,
                ),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("360"), Icon(Icons.touch_app)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "Without it we wouldn't have the growing selection of electric vehicles we have today, yet the 2022 Tesla Model S remains one of the most compelling and desirable options in that growing market segment. With up to 412-miles of estimated driving range—depending upon model—the S can easily be used for long drives, and the 1020-hp Plaid version can deliver supercar acceleration while seating four adults. The Model S is also practical, with a large rear cargo area and a secondary front-trunk for extra space. New entrants in the luxury EV sedan category includes the Porsche Taycan and the Audi e-tron GT, both of which challenge the Model S in terms of performance and comfort."),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "<5 sec",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Time",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
        height: 24.0,
        child: VerticalDivider(
          color: Colors.black,
        ),
      ),
              Column(
                children: [
                  Text(
                    "<+250km/h",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Spsed",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
        height: 24.0,
        child: VerticalDivider(
          color: Colors.black,
        ),
      ),
              Column(
                children: [
                  Text(
                    "\$100.000",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: OutlinedButton(
          onPressed: () {},
          child: Text("Reserve now", style: TextStyle(fontSize: 22,color: Colors.black),),
          style: OutlinedButton.styleFrom(
        
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            side: BorderSide(width: 2.0),
          ),
        ),
      ),

        ],
      ),
    );
  }
}
