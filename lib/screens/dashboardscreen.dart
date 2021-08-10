import 'package:fiasco/constants.dart';
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
             children: [
               Container(
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(8)),
                     boxShadow: [BoxShadow(
                       color: Colors.grey,
                       blurRadius: 4.0,
                     ),]
                 ),
                 width: MediaQuery.of(context).size.width/2.4,
                 height: MediaQuery.of(context).size.height * 0.4/3,
               )
             ],
           )
         ],
        ),
      ),
    );
  }
}
