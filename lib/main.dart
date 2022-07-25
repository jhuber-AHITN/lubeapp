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
      home: Introduction(),
    );
  }
}

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  static List<String> images = [
    'assets/earth_loadingscreen.png',
    'assets/desktopsitter_loadingscreen.png',
    'assets/standingunderwear_loadingscreen.png'
  ];
  static const List<String> titles = [
    'Connect with People',
    'Your way!',
    'Find Your Duo,',
  ];

  static const List<String> texts = [
    'Find friends anytime, any where, any situation!',
    'Make some friends with same interests',
    'Make connections that are more meaningful'
  ];

  Widget build(BuildContext context) {
    List pages = List.generate(
        3,
        (index) => Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.22,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    height: MediaQuery.of(context).size.height * 0.3587041,
                    width: MediaQuery.of(context).size.width * 0.5840,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6106,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.0739,
                    width: MediaQuery.of(context).size.width * 0.6233,
                    child: Text(titles[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Akshar',
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.36,
                            color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.667,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1463,
                    width: 200,
                    child: Text(texts[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'AbhayaLibre-SemiBold',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ),
              ],
            ));

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF29173D), Color(0xFF170E28), Color(0xFF010310)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: PageView(
            children: [
              Column(
                children: <Widget>[
                  Container(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7519,
                    child: PageView.builder(
                      controller: controller,
                      // itemCount: pages.length,
                      itemBuilder: (_, index) {
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.5853,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const WormEffect(
                        dotHeight: 16,
                        dotWidth: 16,
                        type: WormType.thin,
                        // strokeWidth: 5,
                      ),
                    ),
                  ),
                  Positioned(
                    top:  MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ),
                      child: Text('Left to Right'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
