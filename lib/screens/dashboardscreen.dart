import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/widgets/dashboardwidgets.dart';
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardWidget(title: 'Income this month:', money: 5320, percent: 12, image: 'line-chart', profit: true,),
                DashboardWidget(title: 'Costs this month:', money: 4122, percent: -46, image: 'bar-graph', profit: false,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
