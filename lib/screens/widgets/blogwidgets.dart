import 'package:flutter/material.dart';
import '../../constants.dart';

class BlogWidgets extends StatelessWidget {
  String title;
  String price;
  String image;
  BlogWidgets({Key? key, required this.title, required this.price, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
            ),
          ]),
      width: MediaQuery.of(context).size.width * 0.85,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20),
                child: Text(
                  title,
                  style: kLightTitleText.copyWith(
                      fontWeight: FontWeight.w100),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 20),
                child: Text(
                  price,
                  style: kSubTitleText.copyWith(fontSize: 20),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 100,
                height: 100,
                child: Image(
                    image: AssetImage('assets/images/$image.png'))),
          )
        ],
      ),
    );
  }
}
