import 'package:fiasco/screens/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> checkIfUserIsSignedIn() async {
    var userSignedIn = await _googleSignIn.isSignedIn();
    return userSignedIn;
  }

  Future<User> _handleSignIn() async {
    User user;
    bool userSignedIn = await _googleSignIn.isSignedIn();

    if (userSignedIn) {
      user = _auth.currentUser!;
    }
    else {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      user = (await _auth.signInWithCredential(credential)).user!;
      userSignedIn = await _googleSignIn.isSignedIn();
    }

    return user;
  }

  void onGoogleSignIn(BuildContext context) async {
    User user = await _handleSignIn();
    var userSignedIn = await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              BottomNavigation()),
    );
  }

  getCurrentUser(){
    User? user = _auth.currentUser;
    return user;
  }

// signout
  Future signOut() async {
    try {
      return _googleSignIn.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}