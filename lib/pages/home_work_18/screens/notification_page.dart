import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelNotificationPage extends StatelessWidget {
  PageStorageKey pageStrKey = PageStorageKey("key1");
  PageStorageBucket pageStrBucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            _search(),
            SizedBox(
              height: 10,
            ),
            PageStorage(
              bucket: pageStrBucket,
              child: _friendsAvatar()),
            SizedBox(
              height: 10,
            ),
            noticationList(),
          ],
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
        "Notification",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          hintText: "find friends",
          labelText: "find friends",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _friendsAvatar() {
    return Container(
      height: 70,
      child: ListView(
        key: pageStrKey,
        scrollDirection: Axis.horizontal,
        children: [
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 15,
                child: Icon(Icons.add),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.amberAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.purpleAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 30.0,
            child: Transform.translate(
              offset: const Offset(20.0, 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget noticationList() {
    return SingleChildScrollView(
        child: Container(
            child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(""),
          ),
          title: Text("Stive Jobs"),
          subtitle: Text("21 sentabrdan iPhone 13 chiqdi ....."),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(""),
          ),
          title: Text("Stive Jobs"),
          subtitle: Text("21 sentabrdan iPhone 13 chiqdi ....."),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(""),
          ),
          title: Text("Messi"),
          subtitle: Text("acrive 21 minut ago"),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(""),
          ),
          title: Text("Emily Vancamp"),
          subtitle: Text("online"),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(""),
          ),
          title: Text("Muhammad Siddiq"),
          subtitle: Text("online"),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
        Divider(
          color: Colors.black,
        ),
        
      ],
    ),),);
  }
}
