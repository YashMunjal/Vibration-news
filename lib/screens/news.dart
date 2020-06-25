import 'package:flutter/material.dart';
import 'package:vibrateNewsUi/providers/news_provider.dart';
import 'package:vibrateNewsUi/screens/news_card.dart';
import 'package:vibrateNewsUi/vibrationClass.dart';
import 'package:vibration/vibration.dart';

import 'news_screen.dart';

NewsProvider obj =NewsProvider();

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 30,width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,3),
                  color: Colors.amber[200],
                  blurRadius: 8
                )
              ]
            ),
            child: Icon(
              Icons.volume_up,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              
            },
            child: Container(
              height: 30,width: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,3),
                    color: Colors.amber[100],
                    blurRadius: 5
                  )
                ]
              ),
              child: Icon(
                Icons.vibration,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Flexible(
              child: FutureBuilder(
                future: obj.getNews(),
                builder: (context, snapshot) {
                  if (snapshot == null || snapshot.connectionState == ConnectionState.waiting || snapshot.connectionState == ConnectionState.none){
                        // if(!snapshot.data || snapshot.connectionState!=ConnectionState.done){
                        //   print(snapshot.data);
                    return Center(child: Container(
                      width: 20,height: 20,
                      child: CircularProgressIndicator()));
                  }else {
                    return ListView.builder(
                      itemCount: snapshot.data.newsp.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsScreen())),
                          child: NewsCard()
                        );
                      },
                    );
                  }
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
