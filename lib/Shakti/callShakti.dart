import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/DashboardShakti.dart';

void main() {
  runApp(callShakti());
}

class callShakti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: guide(),
    );
  }
}

class card {
  final String name;
  final String number;

  card({required this.name, required this.number});
}

class guide extends StatelessWidget {
  final List<card> section = [
    card(
      name: 'AAA',
      number: '1111111111',
    ),
    card(
      name: 'BBB',
      number: '2222222222',
    ),
    card(
      name: 'CCC',
      number: '3333333333',
    ),
    card(
      name: 'DDD',
      number: '4444444444',
    ),
    card(
      name: 'EEE',
      number: '5555555555',
    ),
    card(
      name: 'FFF',
      number: '6666666666',
    ),
    card(
      name: 'GGG',
      number: '7777777777',
    ),
    card(
      name: 'HHH',
      number: '8888888888',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(32, 25, 55, 1.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 865,
              width: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/image/leaf.png'))),
              child: Container(
                decoration: BoxDecoration(color: Colors.black87),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                  top: 50, bottom: 10, left: 10),
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
                      Padding(
                        padding: EdgeInsets.only(top: 40, right: 100),
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
                            'Nearby Contacts',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent),
                          ),
                        ),
                      ),
                      Container(
                        height: 865,
                        width: 450,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: section.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                section[index].name,
                                style: TextStyle(color: Colors.greenAccent),
                              ),
                              subtitle: Text(
                                section[index].number,
                                style: TextStyle(color: Colors.grey),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        cardShakti(section: section[index]),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class cardShakti extends StatelessWidget {
  final card section;

  cardShakti({required this.section});

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
                        image: AssetImage('assets/image/leaf.png'))),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black87),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 50, bottom: 10, left: 10),
                                child: TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  callShakti()));
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
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(section.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50,
                                        color: Colors.greenAccent)),
                                SizedBox(height: 20.0),
                                Text(
                                  section.number,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 30),
                                ),
                                SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(
                                        '${section.number} Calling...',
                                        style: TextStyle(
                                            color: Colors.greenAccent),
                                      ),
                                    ));
                                  },
                                  child: Text(
                                    'Call',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
