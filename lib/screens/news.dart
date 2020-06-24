import 'package:flutter/material.dart';

import 'news_screen.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsScreen())),
                  child: newsCard()
                );
              },
            )
          )
        ],
      ),
    );
  }
  Widget newsCard(){
    return Padding(
      padding: const EdgeInsets.only(bottom:16.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/logo/logo.png',
                        height: 50,
                      ),
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News Headline',
                          style: TextStyle(
                            fontSize: 22
                          ),
                        ),
                        Text(
                          'Headline'
                        ),
                        Text(
                          'Headline'
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber.withOpacity(0.5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'sdgtssrmtymt,g,h.h.'
                  ),
                  Text(
                    'sdgtssrmtymt,g,h.h.'
                  ),
                  Text(
                    'sdgtssrmtymt,g,h.h.'
                  )
                ],
              )
            ],
          ),
        ),
      ),
                );
  }
}
