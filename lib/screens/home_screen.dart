import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibrateNewsUi/models/card_model.dart';
import 'package:vibrateNewsUi/colors.dart';



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
                  return Container(
                    margin: EdgeInsets.only(right: 8),
                    height: 175,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: cards[index].bgColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 10,
                              spreadRadius: 4,
                              offset: Offset(0.0, 8.0))
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 14,
                            right: 12,
                            child: Text(cards[index].name,
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: cards[index].fColor))),
                        Positioned(
                            left: 16,
                            top: 63,
                            child: Text('Your Balance',
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: cards[index].fColor))),
                        Positioned(
                            left: 16,
                            top: 82,
                            child: Text('Rs. ' + cards[index].balance,
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: cards[index].fColor))),
                        Positioned(
                            left: 16,
                            bottom: 35,
                            child: Text('Valid Thru',
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: cards[index].sColor))),
                        Positioned(
                            left: 16,
                            bottom: 15,
                            child: Text(cards[index].valid,
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: cards[index].sColor)))
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 24, top: 32, bottom: 16,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Last Transaction',
                      style: GoogleFonts.nunito(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See all',
                      style: GoogleFonts.nunito(
                          fontSize: 12, fontWeight: FontWeight.w700,color: yBlueColor),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
