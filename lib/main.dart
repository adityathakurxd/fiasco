import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/bottomnavigation.dart';
import 'package:fiasco/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fiasco/screens/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: kAccentWhite,
        accentColor: kPrimaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 10.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/signin': (context) =>  SignInScreen(),
        '/bottomnav': (context) => BottomNavigation(),
      },
    );
  }
}