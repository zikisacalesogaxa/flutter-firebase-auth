import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text('Welcome Screen!', textAlign: TextAlign.center, style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.none
        ),),
      ),
    );
  }
}
