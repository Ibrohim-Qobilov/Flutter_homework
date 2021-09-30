import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: _appBar(),
      body: Column(
        children: [
          _tabBarMenu(),
          _sizedBox(),
          _expendedTabBarBody(),
        ],
      ),
    );
  }

   _appBar() {
    return AppBar(
      title: Text(
        "Activity",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    );
  }

   _tabBarMenu() {
    return Container(
      child: TabBar(
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.yellowAccent),

        labelColor: Colors.black,
        controller: _tabController,
        // indicatorColor: Colors.orange,

        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            child: Text(
              "All",
              style: TextStyle(),
            ),
          ),
          Tab(
            child: Text(
              "Shopping",
              style: TextStyle(),
            ),
          ),
          Tab(
            child: Text(
              "Taxi",
              style: TextStyle(),
            ),
          ),
          Tab(
            child: Text(
              "Transport",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }

   _sizedBox() {
    return SizedBox(
      height: 10,
    );
  }

   _expendedTabBarBody() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ListTile(
                    hoverColor: Colors.green,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    ),
                    title: Text("Jane Cooper"),
                    subtitle: Text("June 20.3.41 pm"),
                    trailing: Text("-\$206.35"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ListTile(
                    hoverColor: Colors.green,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    ),
                    title: Text("Taxi"),
                    subtitle: Text("June 20.3.41 pm"),
                    trailing: Text("-\$16.35"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ListTile(
                    hoverColor: Colors.green,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    ),
                    title: Text("Bessie Cooper"),
                    subtitle: Text("June 20.3.41 pm"),
                    trailing: Text("-\$16.35"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ListTile(
                    hoverColor: Colors.green,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    ),
                    title: Text("Kristin Watson"),
                    subtitle: Text("June 20.3.41 pm"),
                    trailing: Text("-\$16.35"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ListTile(
                    hoverColor: Colors.green,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    ),
                    title: Text("Courtney Henry"),
                    subtitle: Text("June 20.3.41 pm"),
                    trailing: Text("-\$160.35"),
                  ),
                ),
              ),
            ],
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }

  
}
