import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Listview vertical

class sport extends StatefulWidget {

  static int selected_sport = 2;
  @override
  _sportState createState() => _sportState();
}

class _sportState extends State<sport> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final ScrollController _controller = ScrollController(initialScrollOffset : 100);
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return false;
      },child: ListView.builder(
      controller: _controller,
      itemCount: 1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (c, i) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_cricket,
                      size: 24.0,
                    ),
                    label: Text('Cricket'),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_esports,
                      size: 24.0,
                    ),
                    label: Text('Esports'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_golf,
                      size: 24.0,
                    ),
                    label: Text('Golf'
                        ''),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_gymnastics,
                      size: 24.0,
                    ),
                    label: Text('Gymnastics'),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_martial_arts,
                      size: 24.0,
                    ),
                    label: Text('Martial Arts'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_baseball,
                      size: 24.0,
                    ),
                    label: Text('Baseball'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.hiking,
                      size: 24.0,
                    ),
                    label: Text('Hiking'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_soccer,
                      size: 24.0,
                    ),
                    label: Text('Soccer'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_football,
                      size: 24.0,
                    ),
                    label: Text('Football'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_hockey,
                      size: 24.0,
                    ),
                    label: Text('Hockey'),
                  ),
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_kabaddi,
                      size: 24.0,
                    ),
                    label: Text('Kabaddi'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_handball,
                      size: 24.0,
                    ),
                    label: Text('Handball'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_motorsports,
                      size: 24.0,
                    ),
                    label: Text('Motorsports'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_rugby,
                      size: 24.0,
                    ),
                    label: Text('Rugby'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_tennis,
                      size: 24.0,
                    ),
                    label: Text('Tennis'),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_volleyball,
                      size: 24.0,
                    ),
                    label: Text('Volleyball'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.sports_basketball,
                      size: 24.0,
                    ),
                    label: Text('Basketball'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.fitness_center,
                      size: 24.0,
                    ),
                    label: Text('Lifting'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.pets,
                      size: 24.0,
                    ),
                    label: Text('Dog Sports'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.ice_skating,
                      size: 24.0,
                    ),
                    label: Text('Ice Skating'),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.rowing,
                      size: 24.0,
                    ),
                    label: Text('Rowing'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.scuba_diving,
                      size: 24.0,
                    ),
                    label: Text('Diving'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      FontAwesomeIcons.chess,
                      size: 24.0,
                    ),
                    label: Text('Chess'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      FontAwesomeIcons.cube,
                      size: 24.0,
                    ),
                    label: Text('Speedcubing'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    icon: Icon(
                      Icons.skateboarding,
                      size: 24.0,
                    ),
                    label: Text('Skateboard'),
                  ),
                ),
              ],
        ),
        ]
    );
      },

            ),
    );
  }
}
