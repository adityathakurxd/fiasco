import 'package:fiasco/services/auth_manager.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class SignInScreen extends StatelessWidget {
  AuthenticationService authenticationService = AuthenticationService();
  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'FIASCO',
            style: kTitleText,
          ),
          Text(
            'Manage Family expenses in one App',
            style: kSubTitleText,
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  authenticationService.onGoogleSignIn(context);
                },
                child: SizedBox(
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Get Started'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.arrow_forward_outlined)
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
