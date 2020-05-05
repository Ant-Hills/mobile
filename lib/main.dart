import 'package:flutter/material.dart';
import './components/UserInfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'startup',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FarmUP'),
        ),
        body: Center(
          child: UserInfo(),
        ),
      ),
    );
  }
}