import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/bottomnavigation.dart';
import 'package:fiasco/screens/homescreen.dart';
import 'package:fiasco/screens/signinscreen.dart';
import 'package:fiasco/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
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
        '/signin': (context) => const SignInScreen(),
        '/bottomnav': (context) => BottomNavigation(),
      },
    );
  }
}