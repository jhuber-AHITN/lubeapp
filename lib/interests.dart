import 'package:app/interests/personality.dart';
import 'package:app/interests/sport.dart';
import 'package:flutter/material.dart';

import 'interests/fooddrinks.dart';
import 'interests/hobby.dart';
import 'interests/videogames.dart';

//Bei back müssen daten gespeichert werden, Static variablen
//Erwähnen das manche icons von icons8 sind / verlinken irgendwo
class interests extends StatefulWidget {
  @override
  _interestsState createState() => _interestsState();
}

class _interestsState extends State<interests> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  var title = "Sport";
  var _sportsactivate = true;
  var _food = false;
  var _personality = false;
  var _hobby = false;
  var _videogames = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9D0FF),
      body: Stack(
        children: [
          Padding(
            //Reference Height: 683,428
//Reference Width: 411,4285
          //MediaQuery.of(context).size.height * 0.18290149072031
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18290149072031),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8216,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFF171C3D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  )),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: (EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.6730774858507407)),
                      child: Container(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: !_sportsactivate,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05852847703049919),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5267562932744927,
                          width: MediaQuery.of(context).size.width,
                          child: AnimatedOpacity(
                              opacity: _sportsactivate ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: sport()),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: !_food,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05852847703049919),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5267562932744927,
                          width: MediaQuery.of(context).size.width,
                          child: AnimatedOpacity(
                              opacity: _food ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: fooddrinks()),
                        ),
                      ),
                    ),
                  ),

                  IgnorePointer(
                    ignoring: !_personality,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05852847703049919),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5267562932744927,
                          width: MediaQuery.of(context).size.width,
                          child: AnimatedOpacity(
                              opacity: _personality ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: personality()),
                        ),
                      ),
                    ),
                  ),

                  IgnorePointer(
                    ignoring: !_hobby,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05852847703049919),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5267562932744927,
                          width: MediaQuery.of(context).size.width,
                          child: AnimatedOpacity(
                              opacity: _hobby ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: hobby()),
                        ),
                      ),
                    ),
                  ),

                  IgnorePointer(
                    ignoring: !_videogames,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05852847703049919),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5267562932744927,
                          width: MediaQuery.of(context).size.width,
                          child: AnimatedOpacity(
                              opacity: _videogames ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: videogames()),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.040969933921349435),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.029264238515249597),
              height: MediaQuery.of(context).size.height * 0.05560205317897423,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.012152779887635399, left: MediaQuery.of(context).size.width * 0.012152779887635399),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3524306167414265,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width * 0.0007,
                                top:
                                    MediaQuery.of(context).size.height * 0.0093,
                                right:
                                    MediaQuery.of(context).size.width * 0.0007,
                                bottom: MediaQuery.of(context).size.height *
                                    0.0093),
                            primary: const Color(0xFF171C3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setState(() {
                            title = 'Sport';
                            _sportsactivate = true;
                            _food = false;
                            _personality = false;
                            _hobby = false;
                            _videogames = false;
                          });
                        },
                        child: const Text(
                          'Sport',
                          style: TextStyle(
                            color: Color(0xFFC9D0FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.012152779887635399, left: MediaQuery.of(context).size.width * 0.012152779887635399),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3524306167414265,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width * 0.0007,
                                top:
                                    MediaQuery.of(context).size.height * 0.0093,
                                right:
                                    MediaQuery.of(context).size.width * 0.0007,
                                bottom: MediaQuery.of(context).size.height *
                                    0.0093),
                            primary: const Color(0xFF171C3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setState(() {
                            title = 'Food & Drinks';
                            _sportsactivate = false;
                            _food = true;
                            _personality = false;
                            _hobby = false;
                            _videogames = false;
                          });
                        },
                        child: const Text(
                          'Food & Drinks',
                          style: TextStyle(
                            color: Color(0xFFC9D0FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.012152779887635399, left: MediaQuery.of(context).size.width * 0.012152779887635399),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3524306167414265,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left:
                                MediaQuery.of(context).size.width * 0.0007,
                                top:
                                MediaQuery.of(context).size.height * 0.0093,
                                right:
                                MediaQuery.of(context).size.width * 0.0007,
                                bottom: MediaQuery.of(context).size.height *
                                    0.0093),
                            primary: const Color(0xFF171C3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setState(() {
                            title = 'Personality';
                            _sportsactivate = false;
                            _food = false;
                            _personality = true;
                            _hobby = false;
                            _videogames = false;
                          });
                        },
                        child: const Text(
                          'Personality',
                          style: TextStyle(
                            color: Color(0xFFC9D0FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.012152779887635399, left: MediaQuery.of(context).size.width * 0.012152779887635399),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3524306167414265,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left:
                                MediaQuery.of(context).size.width * 0.0007,
                                top:
                                MediaQuery.of(context).size.height * 0.0093,
                                right:
                                MediaQuery.of(context).size.width * 0.0007,
                                bottom: MediaQuery.of(context).size.height *
                                    0.0093),
                            primary: const Color(0xFF171C3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setState(() {
                            title = 'Hobby';
                            _sportsactivate = false;
                            _food = false;
                            _personality = false;
                            _hobby = true;
                            _videogames = false;
                          });
                        },
                        child: const Text(
                          'Hobby',
                          style: TextStyle(
                            color: Color(0xFFC9D0FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.012152779887635399, left: MediaQuery.of(context).size.width * 0.012152779887635399),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3524306167414265,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left:
                                MediaQuery.of(context).size.width * 0.0007,
                                top:
                                MediaQuery.of(context).size.height * 0.0093,
                                right:
                                MediaQuery.of(context).size.width * 0.0007,
                                bottom: MediaQuery.of(context).size.height *
                                    0.0093),
                            primary: const Color(0xFF171C3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setState(() {
                            title = 'Video Games';
                            _sportsactivate = false;
                            _food = false;
                            _personality = false;
                            _hobby = false;
                            _videogames = true;
                          });
                        },
                        child: const Text(
                          'Video Games',
                          style: TextStyle(
                            color: Color(0xFFC9D0FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.7608702013964894),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2017,
                        top: MediaQuery.of(context).size.height * 0.0293,
                        right: MediaQuery.of(context).size.width * 0.2017,
                        bottom: MediaQuery.of(context).size.height * 0.0293),
                    primary: const Color(0xFFC9D0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Back',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
