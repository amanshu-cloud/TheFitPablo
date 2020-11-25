//import 'package:app/EmailSignIn.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';
//import 'SignInGoogle.dart';
import 'package:app/SignUpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SignUp();
  }
}
