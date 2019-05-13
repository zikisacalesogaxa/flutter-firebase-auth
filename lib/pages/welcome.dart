import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/pages/sign_in_page.dart';
import 'package:flutter_firebase_auth/pages/sign_up_page.dart';
import 'package:flutter_firebase_auth/widgets/button.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                Button(btnText: 'SIGN IN', onPressed: showSignInScreen),
                SizedBox(height: 10.0,),
                Button(btnText: 'SIGN UP', onPressed: showSignUpScreen),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showSignInScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
  }

  void showSignUpScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

}
