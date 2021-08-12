import 'package:fiasco/screens/bottomnavigation.dart';
import 'package:fiasco/screens/signinscreen.dart';
import 'package:fiasco/services/auth_manager.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  AuthenticationService authenticationService = AuthenticationService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkCurrentuser();
  }

  checkCurrentuser() async {
    bool retVal = await authenticationService.checkIfUserIsSignedIn();
    if (retVal == true) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavigation()), (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignInScreen()), (route) => false);
    }
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}