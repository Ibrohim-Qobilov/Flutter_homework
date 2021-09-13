

import 'package:allhomework/home_work_9/car_info/strings.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';




class CarInfo extends StatefulWidget {
  int kelganIndex;
  CarInfo(this.kelganIndex);

  _CarInfoState createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  void initState() {
    super.initState();
    _updatePaletteGenerator();
  }

  PaletteGenerator? paletteGenerator;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: paletteGenerator!.darkVibrantColor != null ? paletteGenerator!.darkMutedColor!.color: Colors.white,
            stretch: true,
            title: Text(
              Car.CAR_NAMES[widget.kelganIndex],
            ),
            expandedHeight: 260.0,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/homework5/${Car.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        Car.CAR_YEARS[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        Car.CAR_INFO[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _updatePaletteGenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage(
          "assets/images/homework5/${Car.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg"),
          size: Size(400, 160),
    );
    setState(() {
      
    });
  }
}
