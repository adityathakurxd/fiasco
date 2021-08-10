import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/blogwidgets.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: MediaQuery.of(context).size.width),
            const SizedBox(
              height: 20,
            ),
            BlogWidgets(title: 'Calculator for\ncalculating\npossible income', price: 'Free', image: 'calculations'),
            const SizedBox(
              height: 20,
            ),
            BlogWidgets(title: 'Accounting for all\nfinancial\ntransactions', price: 'Buy for \$12.99', image: 'graph'),
            const SizedBox(
              height: 20,
            ),
            BlogWidgets(title: 'Accounting\nfor all\ninvestments', price: 'Free', image: 'start-up')
          ],
        ),
      ),
    );
  }
}
