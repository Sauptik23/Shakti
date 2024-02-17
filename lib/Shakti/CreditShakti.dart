import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/HomeShakti.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CreditShakti(),
  ));
}

class CreditShakti extends StatelessWidget {
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
              height: 867,
              width: 420,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset.zero,
                      blurRadius: 70,
                      spreadRadius: -50,
                      color: Colors.black38,
                    ),
                  ],
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/image/bgShakti.png'))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              top: 70, bottom: 100, left: 10),
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeShakti()));
                              },
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.pinkAccent),
                              label: Text(
                                '',
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(-20, 0),
                                blurRadius: 50,
                                spreadRadius: -30,
                                color: Colors.pinkAccent,
                              ),
                            ],
                          ),
                          child: Text(
                            'Devel',
                            style: TextStyle(
                                fontFamily: 'Samarkan',
                                color: Colors.pink,
                                fontSize: 50),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(17, 0),
                                blurRadius: 50,
                                spreadRadius: -25,
                                color: Color.fromRGBO(32, 25, 55, 1.0),
                              ),
                            ],
                          ),
                          child: Text(
                            'opers',
                            style: TextStyle(
                                fontFamily: 'Samarkan',
                                color: Color.fromRGBO(32, 25, 55, 1.0),
                                fontSize: 50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 70, top: 85),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(17, 0),
                            blurRadius: 50,
                            spreadRadius: -70,
                            color: Color.fromRGBO(32, 25, 55, 1.0),
                          ),
                        ],
                      ),
                      child: Text(
                        'Page under maintanance',
                        style: TextStyle(
                            fontFamily: 'Samarkan',
                            color: Color.fromRGBO(32, 25, 55, 1.0),
                            fontSize: 50),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
