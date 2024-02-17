import 'package:flutter/material.dart';
import 'package:flutter_app/Shakti/DashboardShakti.dart';

void main() {
  runApp(guideShakti());
}

class guideShakti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: guide(),
    );
  }
}

class card {
  final String image;
  final String name;
  final String description;
  final String blog;

  card(
      {required this.name,
      required this.description,
      required this.image,
      required this.blog});
}

class guide extends StatelessWidget {
  final List<card> section = [
    card(
      image: '',
      name: '1. PRACTICE AWARENESS',
      description:
          'The first, and probably most important, component in self-defense is awareness',
      blog:
          ''' This is your first line of defense. Most people think of kicks to the groin and blocking punches when they hear the term “self-defense.” However, true self-defense begins long before any actual physical contact. The first, and probably most important, component in self-defense is awareness: awareness of yourself, your surroundings, and your potential attacker’s likely strategies.

The criminal’s primary strategy is to use the advantage of surprise. Studies have shown that criminals are adept at choosing targets who appear unaware of what is going on around them. By being aware of your surroundings and projecting a “force presence,” you can avoid many common altercations on the street.''',
    ),
    card(
        image: '',
        name: '2. TAKE SELF-DEFENSE TRAINING',
        description:
            'It is important to evaluate the goals and practical usefulness of a women’s self-defense program before signing up',
        blog:
            '''It is important to evaluate the goals and practical usefulness of a women’s self-defense program before signing up.

Here are two tips:

Avoid martial arts studios** unless you specifically wish to train in the traditional martial arts techniques and are prepared for a long-term commitment. Many women’s self-defense programs teach watered-down martial arts techniques that are complex and unrealistic under the stress of an actual attack.
The self-defense program should include simulated assaults**, with a fully padded instructor in realistic rape and attack scenarios, to allow you to practice what you’ve learned.'''),
    card(
      image: '',
      name: '3. ESCAPE IS ALWAYS YOUR BEST OPTION',
      description:
          'You must never leave the primary crime scene with the predator',
      blog:
          '''What if the unthinkable happens? You are suddenly confronted by a predator who demands that you go with him — be it in a car, or into an alley, or a building. It would seem prudent to obey, but you must never leave the primary crime scene with the predator. You are far more likely to be killed or seriously injured if you go with the predator than if you run away (even if he promises not to hurt you). Run away, yell for help, throw a rock through a store or car window — do whatever you can to attract attention. And if the criminal is after your purse or other material items, throw them one way while you run the other.''',
    ),
    card(
        image: '',
        name: '4. YOU HAVE A RIGHT TO FIGHT',
        description:
            'It is important to understand that you CAN and SHOULD defend yourself physically',
        blog:
            '''Unfortunately, no matter how diligently we practice awareness and avoidance techniques, we may find ourselves in a physical confrontation. Whether or not you have self-defense training, and no matter what your age or physical condition, it is important to understand that you CAN and SHOULD defend yourself physically. You have both the moral and legal right to do so, even if the attacker is only threatening you and hasn’t struck first. Many women worry that they will anger the attacker and get hurt worse if they defend themselves, but statistics clearly show that your odds of survival are far greater if you do fight back. Aim for the eyes first and the groin second. Remember, though, to use the element of surprise to your advantage — strike quickly, and mean business. You may only get one chance.'''),
    card(
      image: '',
      name: '5. PEPPER SPRAY IS NOT YOUR SECRET WEAPON',
      description:
          'Never depend on any self-defense tool or weapon to stop an attacker',
      blog:
          '''Pepper spray, like other self-defense aids, can be a useful tool. However, it is important to understand that there can be significant drawbacks to its use. For example, did you know that it doesn’t work on everyone? Surprisingly, 15-20% of people will not be incapacitated even by a full-face spray. Also, if you’re carrying it in your purse, you will only waste time and alert the attacker to your intentions while you fumble for it. Never depend on any self-defense tool or weapon to stop an attacker. Trust your body and your wits, which you can always depend on in the event of an attack.''',
    ),
    card(
      image: '',
      name: '6. AVOID A CAR-JACKING',
      description:
          'Most car-jackings take place when vehicles are stopped at intersections',
      blog:
          '''Lock all doors and keep windows up when driving. Most car-jackings take place when vehicles are stopped at intersections. The criminals approach at a 45-degree angle (in the blind spot), and either pull you out of the driver’s seat or jump in the passenger’s seat.''',
    ),
    card(
      image: '',
      name: '7. BE PREPARED WHEN YOU TRAVEL',
      description:
          'Never open your door unless you are certain the person on the other side is legitimate',
      blog:
          '''Violent crimes against women happen in the best and worst hotels around the world. Predators may play the part of a hotel employee, push their way through an open or unlocked door, or obtain a pass key to the room. As with home safety, never open your door unless you are certain the person on the other side is legitimate, and always carry a door wedge with you when you travel. A wedge is often stronger than the door it secures.''',
    ),
    card(
      image: '',
      name: '8. USE THE INTERNET WISELY',
      description:
          'When communicating online, use a nickname and always keep personal information',
      blog:
          '''Although the Internet is educational and entertaining, it can also be dangerous if one isn’t careful. When communicating online, use a nickname and always keep personal information such as home address and phone number confidential. Instruct family members to do the same. Keep current on security issues, frauds, viruses, etc.''',
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
                      image: AssetImage('assets/image/leafBranch.png'))),
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
                            'Guide',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        height: 750,
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
                                section[index].description,
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
                        image: AssetImage('assets/image/leafBranch.png'))),
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
                                                  guideShakti()));
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
                                Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(section.image)))),
                                Text(section.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.greenAccent)),
                                SizedBox(height: 20.0),
                                Text(
                                  section.blog,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
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
