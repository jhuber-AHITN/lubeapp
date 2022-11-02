import 'package:flutter/material.dart';

class hobby extends StatefulWidget {
  static int selected_hobbies = 2;

  @override
  _hobbyState createState() => _hobbyState();
}

class _hobbyState extends State<hobby> {
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
                          AssetImage('assets/icons/paint.png'),
                        ),
                        label: Text('Drawing'),
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
                          AssetImage('assets/icons/gaming.png'),
                        ),
                        label: Text('Gaming'),
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
                          AssetImage('assets/icons/manga.png'),
                        ),
                        label: Text('Manga'),
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
                          AssetImage('assets/icons/fish.png'),
                        ),
                        label: Text('Fishing'),
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
                          AssetImage('assets/icons/writing.png'),
                        ),
                        label: Text('Writing'),
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
                          AssetImage('assets/icons/motorcycle.png'),
                        ),
                        label: Text('Motorcycle'),
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
                          AssetImage('assets/icons/cars.png'),
                        ),
                        label: Text('Cars'),
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
                          AssetImage('assets/icons/darts.png'),
                        ),
                        label: Text('Darts'),
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
                          AssetImage('assets/icons/eating.png'),
                        ),
                        label: Text('Eating'),
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
                          AssetImage('assets/icons/cycling.png'),
                        ),
                        label: Text('Cycling'),
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
                          AssetImage('assets/icons/meditation.png'),
                        ),
                        label: Text('Meditation'),
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
                          AssetImage('assets/icons/photographing.png'),
                        ),
                        label: Text('Photographing'),
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
                          AssetImage('assets/icons/travel.png'),
                        ),
                        label: Text('Travel'),
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
                          AssetImage('assets/icons/horse-riding.png'),
                        ),
                        label: Text('Horse Riding'),
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
                          AssetImage('assets/icons/debate.png'),
                        ),
                        label: Text('Debate'),
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
                          AssetImage('assets/icons/climbing.png'),
                        ),
                        label: Text('Climbing'),
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
                          AssetImage('assets/icons/cooking.png'),
                        ),
                        label: Text('Cooking'),
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
                          AssetImage('assets/icons/collector.png'),
                        ),
                        label: Text('Collector'),
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
                          AssetImage('assets/icons/films.png'),
                        ),
                        label: Text('Films'),
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
                          AssetImage('assets/icons/read.png'),
                        ),
                        label: Text('Reading'),
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
                          AssetImage('assets/icons/geocatching.png'),
                        ),
                        label: Text('Geocatching'),
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
                          AssetImage('assets/icons/museum.png'),
                        ),
                        label: Text('History'),
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
                          AssetImage('assets/icons/swimming.png'),
                        ),
                        label: Text('Swimming'),
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
                          AssetImage('assets/icons/gardening.png'),
                        ),
                        label: Text('Gardening'),
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
                          AssetImage('assets/icons/camping.png'),
                        ),
                        label: Text('Camping'),
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
