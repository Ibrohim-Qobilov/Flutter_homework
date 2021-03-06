import 'package:flutter/material.dart';
// 2 sahifa

class BoatDetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
      padding: EdgeInsets.all(20),
      height: 146,
      width: width * .4,
      decoration: BoxDecoration(
        border:
            Border.all(width: 2.0, color: Colors.white.withOpacity(0.2)),
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.compare_arrows_sharp,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "74 ",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "m",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "hight",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
