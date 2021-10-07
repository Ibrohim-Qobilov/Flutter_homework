

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  String? img;
  InfoPage({required this.img});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(tag: 1, child: _imgContainer()),
        _appBarStack(context),
        _portButtomBar(),
        _infoStackMethod(context),
      ],
    ));
  }

  Widget _appBarStack(BuildContext context) {
    return Positioned(
      top: 35,
      left: 10,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 27.0,
            ),
          ),
          SizedBox(
            width: 145.0,
          ),
          Text(
            "1/3",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _imgContainer() {
    return Positioned(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(this.img!),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }

  Widget _portButtomBar() {
    return Positioned(
      top: 150,
      right: 100,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size(40, 40),
          minimumSize: Size(50, 50),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        onPressed: () {},
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _infoStackMethod(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.white),
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      image: DecorationImage(
                          image:
                              NetworkImage("https://source.unsplash.com/random/2"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Laminated",
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        "Lurem Vuitton",
                        style: TextStyle(fontSize: 13.0, color: Colors.grey.shade800),
                      ),
                      Text(
                        "Ea dolore ut aliqua\naliquip neiusmod ut ",
                        style:
                            TextStyle(fontSize: 13.0, color: Colors.grey[600]),
                      )
                    ],
                  ),
                ],
              ),
              Divider(
                height: 40.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$6500",
                      style: TextStyle(
                        fontSize: 27.0,
                      ),
                    ),
                    InkWell(
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.brown,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 17.0,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottom: 35.0,
      left: 15.0,
      right: 15.0,
    );
  }
}
