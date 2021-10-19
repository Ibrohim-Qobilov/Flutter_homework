
import 'dart:convert';
import 'package:allhomework/pages/music_ui/model/music_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MusicUIPage extends StatefulWidget {
  const MusicUIPage({Key? key}) : super(key: key);

  @override
  _MusicUIPageState createState() => _MusicUIPageState();
}

class _MusicUIPageState extends State<MusicUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 80.0,
      leading: IconButton(
        icon: Icon(
          Icons.short_text_outlined,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {},
      ),
      title: Text(
        "MUSICLIST",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            size: 25.0,
          ),
        ),
        SizedBox(width: 5.0),
      ],
    );
  }

  FutureBuilder<List<Images>> _body() {
    return FutureBuilder(
      future: _getImagesFormApi(),
      builder: (context, AsyncSnapshot<List<Images>> snap) {
        var data = snap.data;
        if (snap.hasData) {
          return ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              return Container(
                height: 210.0,
                color: Colors.yellow[600],
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 50.0,
                        top: 20.0,
                        right: 15.0,
                      ),
                      height: 125.0,
                      width: double.infinity,
                      // width:
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 30.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text(
                              data[index].author.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Contrary to popular belief, Lorem Ipsum is not simply random text.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              image: NetworkImage(
                                data[index].downloadUrl.toString(),
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        } else {
          return Center(
            child: CupertinoActivityIndicator(),
          );
        }
      },
    );
  }

  

  Future<List<Images>> _getImagesFormApi() async {
    var _response = await http
        .get(Uri.parse('https://picsum.photos/v2/list?page=2&limit=100'));
    if (_response.statusCode == 200) {
      return (json.decode(_response.body) as List)
          .map((e) => Images.fromJson(e))
          .toList();
    } else {
      throw Exception("ERROR");
    }
  }
}