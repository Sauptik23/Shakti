import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/CreditShakti.dart';
import 'package:flutter_app/Shakti/SignInShakti.dart';
import 'package:flutter_app/Shakti/SignUpShakti.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeShakti(),
  ));
}

class HomeShakti extends StatelessWidget {
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
              decoration: const BoxDecoration(
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
                      image: AssetImage('assets/image/girlLook.png'))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 30),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
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
                                image: AssetImage('assets/image/rose.png')))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140, top: 150),
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 50,
                                spreadRadius: 0,
                                color: Color.fromRGBO(32, 25, 55, 1.0),
                              ),
                            ],
                          ),
                          child: const Text(
                            'Shak',
                            style: TextStyle(
                                fontFamily: 'Samarkan',
                                color: Colors.pink,
                                fontSize: 50),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(30, 0),
                                blurRadius: 50,
                                spreadRadius: -10,
                                color: Colors.pinkAccent,
                              ),
                            ],
                          ),
                          child: const Text(
                            'ti',
                            style: TextStyle(
                                fontFamily: 'Samarkan',
                                color: Color.fromRGBO(32, 25, 55, 1.0),
                                fontSize: 60),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(right: 50, left: 50, top: 170),
                      child: MaterialButton(
                          color: Colors.white,
                          minWidth: double.infinity,
                          height: 60,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1.0),
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInShakti()));
                          },
                          child: const Text("Sign In",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.pinkAccent)))),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 50, left: 50, top: 20),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 25),
                          blurRadius: 50,
                          spreadRadius: -27,
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
                            side: const BorderSide(width: 1.0),
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpShakti()));
                        },
                        child: const Text("Sign Up",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset.zero,
                            blurRadius: 10,
                            spreadRadius: -8,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: IconButton.outlined(
                        icon: const Icon(Icons.developer_mode_rounded),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreditShakti()));
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "[version 1.0]",
                      style: TextStyle(color: Colors.white12),
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
