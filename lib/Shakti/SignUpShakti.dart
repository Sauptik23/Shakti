import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/HomeShakti.dart';
import 'package:flutter_app/Shakti/DashboardShakti.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpShakti(),
  ));
}

class SignUpShakti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink[500],
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 870,
                    width: 420,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 130),
                            blurRadius: 70,
                            spreadRadius: 20,
                            color: Colors.black38,
                          ),
                        ],
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/image/girlHair.png'))),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 50, left: 10),
                              child: TextButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeShakti()));
                                  },
                                  icon: Icon(Icons.arrow_back_ios,
                                      color: Color.fromRGBO(32, 25, 55, 1.0)),
                                  label: Text(
                                    '',
                                    style: TextStyle(
                                        color: Color.fromRGBO(32, 25, 55, 1.0),
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset.zero,
                                    blurRadius: 50,
                                    spreadRadius: -20,
                                    color: Colors.grey,
                                  ),
                                ],
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage('assets/image/rose.png')))),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 120),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: 'Samarkan',
                                color: Colors.pink,
                                fontSize: 50),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 50, left: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.normal,
                                offset: Offset(0, 5),
                                blurRadius: 20,
                                spreadRadius: 0,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: 'Hint: 10 digit phone number',
                                hintStyle: TextStyle(color: Colors.white30),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                label: const Text(
                                  'Enter Number',
                                  style: TextStyle(color: Colors.white70),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 50, left: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.normal,
                                offset: Offset(0, 5),
                                blurRadius: 20,
                                spreadRadius: 0,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: 'Hint: 8 alphanumeric characters',
                                hintStyle: TextStyle(color: Colors.white30),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                label: const Text(
                                  'Create Password',
                                  style: TextStyle(color: Colors.white70),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Send OTP',
                              style: TextStyle(color: Colors.pinkAccent),
                            )),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20, right: 100, left: 100),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.normal,
                                offset: Offset(0, 5),
                                blurRadius: 20,
                                spreadRadius: 0,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white30),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                label: const Text(
                                  'Enter Otp',
                                  style: TextStyle(color: Colors.white70),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 50, left: 50, top: 50),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 50),
                              blurRadius: 40,
                              spreadRadius: -45,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                        child: MaterialButton(
                            color: Colors.pinkAccent,
                            minWidth: double.infinity,
                            height: 60,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.0),
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardShakti()));
                            },
                            child: Text("Sign Up",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            )));
  }
}
