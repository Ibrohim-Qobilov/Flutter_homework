import 'dart:ui';

import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _floatingActionButton(),
        // appBar: _appBar(),
        body: SafeArea(
          child: Column(
            children: [
              _appBarIkki(),
              _chatInfoHorizontal(),
              _sizeBox(),
              _chatInfoVertical(),
            ],
          ),
        ));
  }

  Widget _appBarIkki() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Recent Chats",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _sizeBox() {
    return SizedBox(
      height: 15,
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Recent Chats",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
      ),
    );
  }

  Widget _chatInfoHorizontal() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue),
            child: Text(
              "All chat",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Personal",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Work",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Group",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }

  Widget _chatInfoVertical() {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media.istockphoto.com/photos/happy-african-girl-blogger-record-travel-vlog-shoot-selfie-looking-at-picture-id1270868851?b=1&k=20&m=1270868851&s=170667a&w=0&h=Jfp4tOwHAIZOIZJtH0RwL_I79hGL6YtcwEmPUvErEOw=",
            ),
            radius: 30,
          ),
          title: Text(
            "Darlene Steward",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text("Pis take a look a the images"),
          trailing: Column(
            children: [
              Text("18:00"),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigoAccent),
                alignment: Alignment.center,
                child: Text("20"),
              ),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media.istockphoto.com/photos/smiling-girl-playing-on-the-swing-picture-id1252210017?b=1&k=20&m=1252210017&s=170667a&w=0&h=_1qcCJKtv5YhkuibleEGnzV8oeY9QIKGkqWhLdreAo4=",
            ),
            radius: 30,
          ),
          title: Text(
            "Fullsnack Desnack",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text("Pis take a look a the images"),
          trailing: Text("20:20"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
            radius: 30,
          ),
          title: Text(
            "Emily ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text("Pis take a look a the images"),
          trailing: Text("20:20"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
            radius: 30,
          ),
          title: Text(
            "Elily Adam",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text("thanks dude"),
          trailing: Text("23:40"),
        ),
      ],
    );
  }
}
