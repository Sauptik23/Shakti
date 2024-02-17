import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/callShakti.dart';
import 'package:flutter_app/Shakti/guideShakti.dart';
import 'package:flutter_app/Shakti/profileShakti.dart';
import 'package:flutter_app/Shakti/speechPage.dart';
import 'package:flutter_app/Shakti/toggleShakti.dart';
import "package:flutter_app/Shakti/mapPage.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardShakti(),
  ));
}

class DashboardShakti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(32, 25, 55, 1.0),
        child: Container(
          height: 865,
          width: 420,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  blurRadius: 90,
                  spreadRadius: 0,
                  color: Colors.black38,
                ),
              ],
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/roseLeaf.png'))),
          child: Container(
              decoration: BoxDecoration(color: Colors.black54),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, right: 200),
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
                            'Welcome',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, -10),
                              blurRadius: 50,
                              spreadRadius: 30,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                        child: Text(
                          'Rounak',
                          style: TextStyle(
                              fontFamily: 'Samarkan',
                              fontSize: 40,
                              color: Colors.pink.shade200),
                        ),
                      ),
                      Container(
                          padding:
                              EdgeInsets.only(top: 70, left: 20, right: 20),
                          height: 500,
                          width: 400,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 40),
                                blurRadius: 100,
                                spreadRadius: -20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 50,
                            crossAxisSpacing: 50,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  backgroundBlendMode: BlendMode.hardLight,
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      opacity: 0.7,
                                      scale: 6,
                                      image: AssetImage(
                                          "assets/image/contact.png")),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 17),
                                      blurRadius: 17,
                                      spreadRadius: -10,
                                      color: Colors.green.shade200,
                                    ),
                                  ],
                                ),
                                child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(top: 110),
                                      child: Text(
                                        'Contacts',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green[300]),
                                      ),
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.hardLight,
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      opacity: 10,
                                      scale: 10,
                                      image: AssetImage(
                                          "assets/image/toggle.png")),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 17),
                                      blurRadius: 17,
                                      spreadRadius: -10,
                                      color: Colors.orange.shade200,
                                    ),
                                  ],
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  toggleShakti()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 110),
                                      child: Text(
                                        'Toggle',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellow.shade800),
                                      ),
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(13),
                                  backgroundBlendMode: BlendMode.hardLight,
                                  image: DecorationImage(
                                      opacity: 0.5,
                                      scale: 20,
                                      image:
                                          AssetImage("assets/image/mic.png")),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 17),
                                      blurRadius: 17,
                                      spreadRadius: -10,
                                      color: Colors.blue.shade200,
                                    ),
                                  ],
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 110),
                                      child: Text(
                                        'Voice',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade500),
                                      ),
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red[100],
                                  backgroundBlendMode: BlendMode.hardLight,
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      opacity: 0.5,
                                      scale: 6,
                                      image:
                                          AssetImage("assets/image/rose.png")),
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
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MapPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 110),
                                      child: Text(
                                        'Menstrual',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red.shade300),
                                      ),
                                    )),
                              ),
                            ],
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 30, right: 30),
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 17,
                                spreadRadius: -10,
                                color: Colors.black,
                              ),
                            ],
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              icon: Icon(Icons.search_rounded),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 55),
                          child: Container(
                            height: 70,
                            padding: EdgeInsets.only(),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 70),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(-40, 0),
                                          blurRadius: 70,
                                          spreadRadius: 20,
                                          color:
                                              Color.fromRGBO(32, 25, 55, 1.0),
                                        ),
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.featured_play_list_rounded),
                                      color: Colors.black54,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    guideShakti()));
                                      },
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: IconButton(
                                      iconSize: 30,
                                      icon: const Icon(Icons.call_end_rounded),
                                      color: Colors.black54,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    callShakti()));
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 70),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(40, 5),
                                          blurRadius: 50,
                                          spreadRadius: 0,
                                          color: Colors.green.shade900,
                                        ),
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.face_retouching_natural),
                                      color: Colors.black54,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    profileShakti()));
                                      },
                                    ),
                                  ),
                                ]),
                          ))
                    ]),
              )),
        ),
      ),
    );
  }
}
