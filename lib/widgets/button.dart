import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;

  Button({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          onPressed: () => {},
          color: Colors.redAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
            child: Text(
              btnText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
