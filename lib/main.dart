import 'package:fiasco/constants.dart';
import 'package:fiasco/screens/signinscreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Supabase.initialize(
  //   url: supabaseURL,
  //   anonKey: supabaseKey,
  //   authCallbackUrlHostname: 'login-callback',
  // );
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
        '/': (_) => const SignInScreen(),
        // '/login': (_) => const LoginPage(),
        // '/account': (_) => const AccountPage(),
      },
    );
  }
}