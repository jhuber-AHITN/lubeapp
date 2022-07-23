import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  static List<String> images = ['assets/earth_loadingscreen.png', 'assets/desktopsitter_loadingscreen.png'];
  static const List<String> texts = ['Connect with People', 'Find friends anytime, any where,any situation!', 'Your way!', 'Make some friends with same interests'];

  Widget build(BuildContext context) {

    List pages = List.generate(
        1,
            (index)=>
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF29173D), Color(0xFF170E28), Color(0xFF010310)],
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 76,
                      child: Container(
                        height: 375,
                        width: 375,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(images[index]),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 473,
                      child: Container(
                        height: 31,
                        width: 250,
                        child: Text(texts[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Akshar',
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.36,
                                color: Colors.white)),
                      ),
                    ),
                    Positioned(
                      top: 515,
                      child: Container(
                        height: 100,
                        width: 200,
                        child: Text(
                            texts[index+1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'AbhayaLibre-SemiBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
