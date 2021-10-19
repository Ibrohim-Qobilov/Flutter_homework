import 'package:allhomework/pages_info/data/list_pages.dart';
import 'package:allhomework/pages_info/model/page.dart';
import 'package:flutter/material.dart';

class PagesList extends StatefulWidget {
  const PagesList({Key? key}) : super(key: key);

  @override
  _PagesListState createState() => _PagesListState();
}

class _PagesListState extends State<PagesList> {
  var _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: _getBodyWithCustomScrollView(),
      drawer: _drawer(),
    );
  }

  _drawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 300,
            width: 330,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://media.istockphoto.com/photos/addicted-to-the-social-media-picture-id1268421628?b=1&k=20&m=1268421628&s=170667a&w=0&h=6Tds0SPAnlUHtfY6_2p3MCriOtlJvxrguxmuCuIm3cE=",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 60,
            color: Colors.black26,
            child: Text(
              "Flutter bootcamp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
           
        ],
      ),
    );
  }

  _getBodyWithCustomScrollView() => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          _getSliverAppBar(),
          _getSliverList(),
        ],
      );
  _getSliverAppBar() => SliverAppBar(
        floating: true,
        stretch: true,
        flexibleSpace: _getFlexibleSpaceBar(),
        expandedHeight: _size.height * 0.3,
        backgroundColor: Colors.black54,
      );
  _getFlexibleSpaceBar() => FlexibleSpaceBar(
          background: Image.network(
        "https://media.istockphoto.com/photos/addicted-to-the-social-media-picture-id1268421628?b=1&k=20&m=1268421628&s=170667a&w=0&h=6Tds0SPAnlUHtfY6_2p3MCriOtlJvxrguxmuCuIm3cE=",
        fit: BoxFit.cover,
      ));
  _getSliverList() => SliverList(
          delegate:
              SliverChildListDelegate(List.generate(pageList.length, (index) {
        PageUI pageUI = pageList[index];
        return _setPageItemLayout(pageUI);
      })));

  /// Sahifaning ma'lumotlatini ko`rsatadigan Item Layout
  _setPageItemLayout(PageUI pageUI) => Card(
        margin: EdgeInsets.symmetric(vertical: 3.0),
        child: ListTile(
          leading: pageUI.icon,
          title: Text(pageUI.title),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(pageUI.subtitle),
              Text("    "),
              Text(pageUI.date),
            ],
          ),
          trailing: _getPopUpMenu(),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageUI.page));
          },
        ),
      );

  _getPopUpMenu() => PopupMenuButton(itemBuilder: (context) {
        return List.generate(
            3,
            (index) => PopupMenuItem(
                    child: TextButton(
                  onPressed: () {
                    _goToSource();
                  },
                  child: Text("Menu"),
                )));
      });

  _goToSource() async {
    // const url = "https://flutter.io";
    // if (await canLaunch(url))
    // await launch(url);
    // else
    // // can't launch url, there is some error
    // throw "Could not launch $url";
  }
}
