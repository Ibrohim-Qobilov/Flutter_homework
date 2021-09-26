import 'package:flutter/material.dart';

class HotelAccontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 64.0,
                backgroundImage: AssetImage(
                  "assets/images/homework18/profile.png",
                ),
                child: Transform.translate(
                  offset: const Offset(40.0, 56.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: Text(
                      "Hotel  13",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: Text(
                      "Following  100 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: Text(
                      "Follows  10 k",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              
              ListTile(
                leading: Icon(
                  Icons.favorite_border_sharp,
                ),
                title: Text(
                  "favorite Hotels",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
              Divider(color: Colors.black,),
              ListTile(
                leading: Icon(
                  Icons.bookmark_add_outlined
                ),
                title: Text(
                  "Add a Hotel",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
              Divider(color: Colors.black,),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text(
                  "hotel services",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(
                  Icons.add_business_outlined
                ),
                title: Text(
                  "busness rooms",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
              Divider(color: Colors.black,),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                ),
                title: Text(
                  "info hotels",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 30,
      title: Text(
        "My Profile",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ))
      ],
    );
  }
}
