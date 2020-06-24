import 'package:flutter/material.dart';
import 'package:vibrateNewsUi/screens/news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: News(),
      ),
    );
  }
}