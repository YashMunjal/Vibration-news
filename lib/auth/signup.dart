import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/auth_path/Path 1.png',
                height: height*0.52,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/auth_path/Path 3.png',
                height: height*0.2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: height*0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo/logo.png',
                        height: 65,
                        width: 65,
                      ),
                      SizedBox(width: width*0.01),
                      Text(
                        'News\nApp',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height*0.07),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  SizedBox(height: height*0.01),
                  Center(
                    child: Container(
                      width: width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color:Colors.amber
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            color: Colors.grey[300],
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                          border: InputBorder.none,
                          isDense: true
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02),
                  Text(
                    'E-mail',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  SizedBox(height: height*0.01),
                  Center(
                    child: Container(
                      width: width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color:Colors.amber
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            color: Colors.grey[300],
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter E-mail',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                          border: InputBorder.none,
                          isDense: true
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                  SizedBox(height: height*0.01),
                  Center(
                    child: Container(
                      width: width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color:Colors.amber
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            color: Colors.grey[300],
                            blurRadius: 10
                          )
                        ]
                      ),
                      child: TextFormField(
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                          border: InputBorder.none,
                          isDense: true
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.03),
                  disabilities(),
                  SizedBox(height: height*0.03),
                  Center(
                    child: Container(
                      height: height*0.06,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amber,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:15,right: 15,top: 12,bottom: 12),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _radioValue=0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
  
      switch (_radioValue) {
        case 0:
          // _result = ...
          break;
        case 1:
          // _result = ...
          break;
        case 2:
          // _result = ...
          break;
      }
    });
  }
  Widget disabilities(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Type Of Disabilities:',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Visually Impaired'
              ),
              Radio(
                value: 0, 
                groupValue: _radioValue, 
                onChanged: _handleRadioValueChange
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hearing Impaired'
              ),
              Radio(
                value: 1, 
                groupValue: _radioValue, 
                onChanged: _handleRadioValueChange
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Both'
              ),
              Radio(
                value: 2, 
                groupValue: _radioValue, 
                onChanged: _handleRadioValueChange
              )
            ],
          ),
        ],
      ),
    );
  }
}