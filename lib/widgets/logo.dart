import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Image.asset(
        'assets/alien-logo.png',
        height: 150.0,
        width: 150.0,
      ),
    );
  }
}
