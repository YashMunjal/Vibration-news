import 'package:flutter/material.dart';
import 'package:vibrateNewsUi/auth/login.dart';
import 'package:vibrateNewsUi/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vibrator News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor:Color(0xff03A5E1),
        backgroundColor: Colors.white
      ),
      home: Login(),
    );
  }
}
