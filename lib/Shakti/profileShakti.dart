import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/DashboardShakti.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profileShakti(),
  ));
}

class profileShakti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(32, 25, 55, 1.0),
        child: Container(
          height: 865,
          width: 450,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/rosePetal.png'))),
          child: Container(
            decoration: BoxDecoration(color: Colors.black87),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding:
                              EdgeInsets.only(top: 50, bottom: 10, left: 10),
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardShakti()));
                              },
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.pinkAccent),
                              label: Text(
                                '',
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 200),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 50,
                                spreadRadius: 30,
                                color: Colors.black54,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(13),
                              backgroundBlendMode: BlendMode.hardLight,
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                'Name: Rounak\nNumber: 7595960691\nUsername: Rounak@2003',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 70,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            backgroundBlendMode: BlendMode.hardLight,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 17,
                                spreadRadius: -10,
                                color: Colors.red.shade200,
                              ),
                            ],
                          ),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'Log Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red.shade300),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
