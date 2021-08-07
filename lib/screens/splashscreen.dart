import 'dart:async';
import 'package:flutter/material.dart';

import '../constants.dart';

class SplashScreen extends StatefulWidget {
 @override
 _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
 void initState() {
   loadData();
   super.initState();
 }

 Future<Timer> loadData() async {
   return new Timer(Duration(seconds: 2), onDoneLoading);
 }

 onDoneLoading() async {
   Navigator.pushNamed(context, '/signin');
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             'FIASCO',
             style: kTitleText,
           ),
           SizedBox(
             height: 20.0,
           ),
           CircularProgressIndicator(color: kPrimaryColor,)
         ],
       )
     ),
   );
 }
}

