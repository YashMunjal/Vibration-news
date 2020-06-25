import 'package:flutter/material.dart';
import 'package:vibrateNewsUi/auth/signup.dart';
import 'package:vibrateNewsUi/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/auth_path/Path 3.png',
                    height: height*0.2,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/auth_path/Path 1.png',
                    height: height*0.52,
                  ),
                ),
                Positioned(
                  top: height*0.55,
                  left: width*0.15,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/auth_path/Path 2.png',
                        width: width*0.7,
                      ),
                      Positioned(
                        top: height*0.04,
                        left: width*0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/auth_path/google sign in.png',
                              height: height*0.05,
                            ),
                            SizedBox(width: width*0.02,),
                            Container(
                              height: height*0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey
                                )
                              ),
                            ),
                            SizedBox(width: width*0.02,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                              },
                              child: Image.asset(
                                'assets/auth_path/sign up.png',
                                height: height*0.05,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
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
                        'E-mail address',
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
                      SizedBox(height: height*0.012),
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
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          },
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
                                'LOG IN',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 20
                                ),
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
}