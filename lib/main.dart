import 'package:flutter/material.dart';
import 'package:startupapplication/screen/Button.dart';
import './screen/Textfield.dart';

void main() {
  runApp(MyApp());
}

/// Creates the main login screen of the application using
/// the different screens created in the screens folder.
class MyApp extends StatelessWidget {

  final TextEditingController pass = TextEditingController();
  final TextEditingController user = TextEditingController();

  // function that checks with the database if the
  // login information provided is correct.
  void _checkLogin() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'startup',
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFieldForm(
                  labelText: "username",
                  controller: user,
                  isHidden: false,
                ),
                TextFieldForm(
                  labelText: "password",
                  controller: pass,
                  isHidden: true,
                ),
                SendButtonInfo(
                  labelText: "Login",
                  sendDetails: _checkLogin,
                ),
              ]


    ),
          ),
        ),
      ),
    );
  }
}