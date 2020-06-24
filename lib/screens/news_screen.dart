import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom: 18),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber.withOpacity(0.5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News Headline',
                          style: TextStyle(
                            fontSize: 22
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Date: dndfmfmdm'
                            ),
                            SizedBox(width: 20,),
                            Text(
                              'Category: dsgsdndff'
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset(
                    'assets/logo/logo.png',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Flexible(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Text(
                      'data data data datd atd adtvzuviubvbvjz bzbfdnfs',
                      textAlign: TextAlign.center,
                    );
                  },
                )
              )
            ],
          ),
        )
      ),
    );
  }
}