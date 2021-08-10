import 'package:flutter/material.dart';

import '../../constants.dart';

class DashboardWidget extends StatelessWidget {
  String title;
  int money;
  int percent;
  String image;
  bool profit;
  DashboardWidget(
      {Key? key,
      required this.title,
      required this.money,
      required this.percent,
      required this.image,
      required this.profit})
      : super(key: key);

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
        width: MediaQuery.of(context).size.width / 2.4,
        height: MediaQuery.of(context).size.height * 0.4 / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: kSubTitleText.copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${money.toString()}',
                      style: kLightTitleText.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      '${percent.toString()}%',
                      style: kLightTitleText.copyWith(
                          color: profit? Colors.green : Colors.red, fontSize: 15),
                    )
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 10,
                    child: Image(
                        image: AssetImage('assets/images/$image.png')))
              ],
            ),
          ],
        ));
  }
}
