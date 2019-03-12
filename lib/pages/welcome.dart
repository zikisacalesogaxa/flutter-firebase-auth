import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/widgets/button.dart';
import 'package:flutter_firebase_auth/widgets/input_field.dart';
import 'package:flutter_firebase_auth/widgets/logo.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 500.0,
            width: 266.0,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _buildLogo(),
                  _buildUsernameInput()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      child: Logo(),
    );
  }

  Widget _buildUsernameInput() {
    return Container(
      child: InputField(
        hintText: 'Username',
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Container(
      child: InputField(
        hintText: 'Password',
        isPassword: true,
      ),
    );
  }

  Widget _buildSignInButton() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Button(
            btnText: 'SIGN IN',
          ),
        ],
      ),
    );
  }
}
