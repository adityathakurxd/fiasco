import 'package:fiasco/constants.dart';
import 'package:flutter/material.dart';

class HomeWidgetTile extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  Color styleColor;
  HomeWidgetTile({Key? key, required this.icon, required this.text, this.color = Colors.white, this.styleColor = const Color(0x9021243E)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 4.0,
          ),]
      ),
      width: MediaQuery.of(context).size.width/2.5,
      height: MediaQuery.of(context).size.height * 0.4/2.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60.0,
            color: styleColor,
          ),
          Text(
            text,
            style: kSubTitleText.copyWith(fontSize: 20.0, color: styleColor),
          )
        ],
      ),
    );
  }
}
