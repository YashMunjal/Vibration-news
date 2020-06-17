import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibrateNewsUi/models/card_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
          padding: EdgeInsets.only(left: 8),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 24, top: 8, bottom: 16),
              child: Text(
                'Hi Yash',
                style: GoogleFonts.nunito(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 175,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 8),
                itemCount: cards.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(margin: EdgeInsets.only(right: 8),
                  height: 175,
                  width: 220,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),
                  color: cards[index].bgColor
                  ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
