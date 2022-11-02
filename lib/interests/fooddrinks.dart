import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class fooddrinks extends StatefulWidget {
  static int selected_fooddrinks = 2;

  @override
  _fooddrinksState createState() => _fooddrinksState();
}

class _fooddrinksState extends State<fooddrinks> {
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
                        icon: Icon(
                          Icons.apple,
                          size: 24.0,
                        ),
                        label: Text('Apple'),
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
                        icon: const Icon(
                          Icons.local_pizza,
                          size: 24.0,
                        ),
                        label: Text('Pizza'),
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
                        icon: Icon(
                          Icons.cake,
                          size: 24.0,
                        ),
                        label: Text('Cake'),
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
                        icon: Icon(
                          Icons.egg,
                          size: 24.0,
                        ),
                        label: Text('Eggs'),
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
                        icon: Icon(
                          Icons.wine_bar,
                          size: 24.0,
                        ),
                        label: Text('Alcohol'),
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
                        icon: Icon(
                          Icons.breakfast_dining,
                          size: 24.0,
                        ),
                        label: Text('Toast'),
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
                        icon: Icon(
                          Icons.bakery_dining,
                          size: 24.0,
                        ),
                        label: Text('Croissant'),
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
                        icon: Icon(
                          Icons.fastfood,
                          size: 24.0,
                        ),
                        label: Text('Fast Food'),
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
                        icon: Icon(
                          Icons.opacity,
                          size: 24.0,
                        ),
                        label: Text('Juice'),
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
                        icon: Icon(
                          Icons.icecream_rounded,
                          size: 24.0,
                        ),
                        label: Text('Ice cream'),
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
                        icon: Icon(
                          Icons.takeout_dining_outlined,
                          size: 24.0,
                        ),
                        label: Text('Noodles'),
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
                        icon: Icon(
                          Icons.nature_rounded,
                          size: 24.0,
                        ),
                        label: Text('Vegan/Vegetarian'),
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
                        icon: Icon(
                          FontAwesomeIcons.water,
                          size: 24.0,
                        ),
                        label: Text('Water'),
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
                        icon: Icon(
                          FontAwesomeIcons.bacon,
                          size: 24.0,
                        ),
                        label: Text('Bacon'),
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
                        icon: Icon(
                          FontAwesomeIcons.blender,
                          size: 24.0,
                        ),
                        label: Text('Smoothies'),
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
                        icon: Icon(
                          FontAwesomeIcons.bowlRice,
                          size: 24.0,
                        ),
                        label: Text('Cereal'),
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
                          AssetImage('assets/cheese.png'),
                        ),
                        label: Text('Cheese'),
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
                        icon: Icon(
                          FontAwesomeIcons.lemon,
                          size: 24.0,
                        ),
                        label: Text('Sour'),
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
                        icon: Icon(
                          FontAwesomeIcons.pepperHot,
                          size: 24.0,
                        ),
                        label: Text('Spicy'),
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
                          AssetImage('assets/grapes.png'),
                        ),
                        label: Text('Grapes'),
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
                          AssetImage('assets/nighteater.png'),
                        ),
                        label: Text('Night Eater'),
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
                          AssetImage('assets/spaghetti.png'),
                        ),
                        label: Text('Spaghetti'),
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
                          AssetImage('assets/beer.png'),
                        ),
                        label: Text('Beer'),
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
                          AssetImage('assets/wine.png'),
                        ),
                        label: Text('Wine'),
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
                          AssetImage('assets/chinese.png'),
                        ),
                        label: Text('Chinese'),
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
