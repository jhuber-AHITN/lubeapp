import 'package:flutter/material.dart';

class videogames extends StatefulWidget {
  static int selected_hobbies = 2;

  @override
  _videogamesState createState() => _videogamesState();
}

class _videogamesState extends State<videogames> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final ScrollController _controller =
  ScrollController(initialScrollOffset: 100);

  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return false;
      },
      child: ListView.builder(
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/csgo.png'),
                        ),
                        label: Text('CS:GO'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/minecraft.png'),
                        ),
                        label: Text('Minecraft'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/eldenring.png'),
                        ),
                        label: Text('Elden Ring'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/pokemon.png'),
                        ),
                        label: Text('Pokemon'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/animalcrossing.png'),
                        ),
                        label: Text('Animal Crossing'),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/racinggames.png'),
                        ),
                        label: Text('Racing Games'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/valorant.png'),
                        ),
                        label: Text('Valorant'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/kratos.png'),
                        ),
                        label: Text('God of War'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/warhammer.png'),
                        ),
                        label: Text('War Hammer'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/amongus.png'),
                        ),
                        label: Text('Among Us'),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/fortnite.png'),
                        ),
                        label: Text('Fortnite'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/leagueoflegends.png'),
                        ),
                        label: Text('League Of Legends'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/apex.png'),
                        ),
                        label: Text('Apex'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/overwatch.png'),
                        ),
                        label: Text('Overwatch'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/fifa.png'),
                        ),
                        label: Text('FIFA'),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/nba.png'),
                        ),
                        label: Text('NBA'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/rainboxsixsiege.png'),
                        ),
                        label: Text('Rainbox Six Siege'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/destiny.png'),
                        ),
                        label: Text('Destiny'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/sifu.png'),
                        ),
                        label: Text('Sifu'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/stray.png'),
                        ),
                        label: Text('Stray'),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/starwars.png'),
                        ),
                        label: Text('Star Wars'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/horizon.png'),
                        ),
                        label: Text('Horizon'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/mario.png'),
                        ),
                        label: Text('Super Mario'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/playstation.png'),
                        ),
                        label: Text('Play Station'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC9D0FF),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        icon: ImageIcon(
                          AssetImage('assets/icons/xbox.png'),
                        ),
                        label: Text('Xbox'),
                      ),
                    ),
                  ],
                ),
              ]);
        },
      ),
    );
  }
}
