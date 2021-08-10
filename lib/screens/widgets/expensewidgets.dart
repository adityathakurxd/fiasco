import 'package:flutter/material.dart';
import '../../constants.dart';

class ExpenseWidget extends StatelessWidget {
  String imagePath;
  String title;
  String subtitle;
  int expense;
  ExpenseWidget(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.expense})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(imagePath)),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: kLightTitleText,
                ),
                Text(
                  subtitle,
                  style: kSubTitleText,
                )
              ],
            ),
            const Spacer(),
            Text(
              '-\$${expense.toString()}',
              style: kTitleText.copyWith(fontSize: 25),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
