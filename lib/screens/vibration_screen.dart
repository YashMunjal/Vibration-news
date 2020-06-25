import 'package:flutter/material.dart';

class Vibration extends StatefulWidget {
  @override
  _VibrationState createState() => _VibrationState();
}

class _VibrationState extends State<Vibration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios
          ),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}