import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/pages/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.white),
      home: new WelcomeScreen(),
    );
  }
}
