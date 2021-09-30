import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilesPage extends StatelessWidget {
  bool _valie = false;

  Color _blue = Color.fromARGB(255, 47, 128, 237);
  Color _grey = Colors.grey;
  Color _white = Colors.white;
  Color _black = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: SafeArea(
            child: Column(
      children: [
        _appBars(),
        SizedBox(height: 10,),
        _profileItem(),
        SizedBox(height: 10,),
        
        _setSetting(
            CupertinoIcons.moon,
            "Dark mode",
            _getSwitch(),
          ),
        Divider(),
        _setSetting(
            CupertinoIcons.person_crop_square,
            "Account",
            _getIcon(),
          ),
          _setSetting(
            CupertinoIcons.bell,
            "Notification",
            _getIcon(),
          ),
          _setSetting(
            CupertinoIcons.chat_bubble,
            "Chat settings",
            _getIcon(),
          ),
          _setSetting(
            CupertinoIcons.memories,
            "Data and storage",
            _getIcon(),
          ),
          
          
          _setSetting(
            CupertinoIcons.info,
            "About",
            _getIcon(),
            
          ),
          
      ],
    )));
  }

  // AppBar _appBar() {
  //   return AppBar(
  //     title: Row(
  //       children: [
  //         Text("settings"),
  //         IconButton(onPressed: () {}, icon: Icon(Icons.search))
  //       ],
  //     ),
  //   );
  // }

  Widget _appBars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "settings",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 27,
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileItem() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        radius: 30,
      ),
      title: Text(
        "Arina Nurrahma",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      subtitle: Text(
        "Trust your fellings be a good human beings",
        style: TextStyle(fontSize: 20),
      ),
    );
  }

 
  
  Widget _setSetting(IconData iconData, String title, Widget trailing) =>
      ListTile(
        leading: Icon(
          iconData,
          color: _blue,
        ),
        title: Text(title, style: TextStyle(fontSize: 14.0),),
        trailing: trailing,
        onTap: () {},
      );

       Icon _getIcon() => Icon(Icons.keyboard_arrow_down, size: 25.4,);


       Switch _getSwitch() => Switch(
      inactiveTrackColor: Colors.grey.shade300,
      inactiveThumbColor: _grey,
      value: false,
      onChanged: (value) {});

       

  
}
