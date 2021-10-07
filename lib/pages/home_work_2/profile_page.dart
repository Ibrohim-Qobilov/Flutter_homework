import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Text("Melan", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Text("_________________________", style: TextStyle(fontSize: 20, ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Text("Search", style: TextStyle(fontSize: 30),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                     backgroundImage: AssetImage("assets/images/homework1/iconbir.jpeg",),
                     radius: 30.0,
                    ),Text("Alica"),
                      ],
                    ),
                     Column(
                      children: [
                        CircleAvatar(
                     backgroundImage: AssetImage("assets/images/homework1/iconikki.jpeg"),
                     radius: 30.0,
                    ),Text("Lola"),
                      ],
                    ),
                     Column(
                      children: [
                        CircleAvatar(
                     backgroundImage: AssetImage("assets/images/homework1/iconbesh.jpeg"),
                     radius: 30.0,
                    ),Text("Shoes"),
                      ],
                    ),
                     Column(
                      children: [
                        CircleAvatar(
                     backgroundImage: AssetImage("assets/images/homework1/iconuch.jpeg"),
                     radius: 30.0,
                    ),Text("Lisa"),
                      ],
                    ),
                     Column(
                      children: [
                        CircleAvatar(
                     backgroundImage: AssetImage("assets/images/homework1/icontort.jpeg"),
                     radius: 30.0,
                    ),Text("Donna"),
                      ],
                    ),
                  ],
                ),
                
              ),
              
                Container(
                  padding: EdgeInsets.only(top: 20),
                height: 300,
                width: size.width * 1.0,
                
                child: Image.asset("assets/images/homework1/moda.jpeg",fit: BoxFit.cover,),
                ),
              
              Container(
                padding: EdgeInsets.only(left: 85),
                height: 50,
                width: 300,
                child: Text("Modern", style: TextStyle(fontSize: 30),),
              ),
               Container(
                padding: EdgeInsets.only(left: 30),
                height: 50,
                width: 300,
                child: Text("___ Essentials ___", style: TextStyle(fontSize: 30),),
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                height: 50,
                width: 300,
                child: Text("Discover new styles", style: TextStyle(fontSize: 20),),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.shopping_bag),
                    Icon(Icons.favorite_sharp),
                    Icon(Icons.people)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
