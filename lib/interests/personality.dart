import 'package:flutter/material.dart';

class personality extends StatefulWidget {
  static int selected_personalities = 2;

  @override
  _personalityState createState() => _personalityState();
}

class _personalityState extends State<personality> {
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
                          AssetImage('assets/gentle.png'),
                        ),
                        label: Text('Gentle'),
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
                          AssetImage('assets/creative.png'),
                        ),
                        label: Text('Creative'),
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
                          AssetImage('assets/extrovert.png'),
                        ),
                        label: Text('Extrovert'),
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
                          AssetImage('assets/shy.png'),
                        ),
                        label: Text('Introvert'),
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
                          AssetImage('assets/curious.png'),
                        ),
                        label: Text('Curious'),
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
                          AssetImage('assets/helpful.png'),
                        ),
                        label: Text('Helpful'),
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
                          AssetImage('assets/lazy.png'),
                        ),
                        label: Text('Lazy'),
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
                          AssetImage('assets/friendly.png'),
                        ),
                        label: Text('Friendly'),
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
                          AssetImage('assets/brain.png'),
                        ),
                        label: Text('Open-Minded'),
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
                          AssetImage('assets/independent.png'),
                        ),
                        label: Text('Independent'),
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
                          AssetImage('assets/strong.png'),
                        ),
                        label: Text('Strong'),
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
                          AssetImage('assets/brave.png'),
                        ),
                        label: Text('Brave'),
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
                          AssetImage('assets/funny.png'),
                        ),
                        label: Text('Funny'),
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
                          AssetImage('assets/honest.png'),
                        ),
                        label: Text('Honest'),
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
                          AssetImage('assets/moody.png'),
                        ),
                        label: Text('Moody'),
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
                          AssetImage('assets/adventurous.png'),
                        ),
                        label: Text('Adventurous'),
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
                          AssetImage('assets/ambitious.png'),
                        ),
                        label: Text('Ambitious'),
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
                          AssetImage('assets/optimistic.png'),
                        ),
                        label: Text('Optimistic'),
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
                          AssetImage('assets/trustworthy.png'),
                        ),
                        label: Text('Trustworthy'),
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
                          AssetImage('assets/busy.png'),
                        ),
                        label: Text('Busy'),
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
                          AssetImage('assets/confident.png'),
                        ),
                        label: Text('Confident'),
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
                          AssetImage('assets/wild.png'),
                        ),
                        label: Text('Wild'),
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
                          AssetImage('assets/impatient.png'),
                        ),
                        label: Text('Impatient'),
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
                          AssetImage('assets/icons/calm.png'),
                        ),
                        label: Text('Calm'),
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
                          AssetImage('assets/icons/cautious.png'),
                        ),
                        label: Text('Cautious'),
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
