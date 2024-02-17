import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/DashboardShakti.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: toggleShakti(),
  ));
}

class toggleShakti extends StatelessWidget {
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
                  image: AssetImage('assets/image/bgShakti.png'))),
          child: Container(
            decoration: BoxDecoration(color: Colors.black12),
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
                        padding:
                            EdgeInsets.only(top: 20, right: 200, bottom: 100),
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
                            'Toggle',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        ),
                      ),
                      ToggleSwitch(
                        minHeight: 100,
                        minWidth: 200.0,
                        cornerRadius: 20.0,
                        activeBgColors: [
                          [Colors.orange],
                          [Colors.pink]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.black87,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: ['On', 'Off'],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
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
