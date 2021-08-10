import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/dashboardwidgets.dart';
import 'package:fiasco/screens/widgets/expensewidgets.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardWidget(
                  title: 'Income this month:',
                  money: 5320,
                  percent: 12,
                  image: 'line-chart',
                  profit: true,
                ),
                DashboardWidget(
                  title: 'Costs this month:',
                  money: 4122,
                  percent: -46,
                  image: 'bar-graph',
                  profit: false,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ExpenseWidget(
                      imagePath: imageData[0],
                      title: 'Mcdonalds',
                      subtitle: 'Cafe and restaurant',
                      expense: 20,
                    ),
                    ExpenseWidget(
                      imagePath: imageData[1],
                      title: 'Iphone 12 Pro',
                      subtitle: 'Phones and accessories',
                      expense: 999,
                    ),
                    ExpenseWidget(
                      imagePath: imageData[2],
                      title: 'Subscription',
                      subtitle: 'Cinema and entertainment',
                      expense: 9,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
