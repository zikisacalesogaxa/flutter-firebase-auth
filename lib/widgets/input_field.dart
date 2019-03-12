import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/components/colors.dart';

class InputField extends StatelessWidget {

  final String hintText;
  final bool isEmail;
  final bool isPassword;
  final ValueChanged<String> onChanged;

  InputField({
    this.hintText,
    this.isEmail = false,
    this.isPassword = false,
    this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: AlienColors.grey,
          borderRadius: BorderRadius.circular(8.0)),
      child: TextField(
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black45,
          fontWeight: FontWeight.w400
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText
        ),
        obscureText: isPassword ? true : false,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
