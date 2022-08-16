import 'package:app/LoadingPage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'DecidePage.dart';
import 'Recaptcha.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  bool hasInternet = false;
  ConnectivityResult result = ConnectivityResult.none;
  static List<String> images = [
    'assets/earth_loadingscreen.png',
    'assets/desktopsitter_loadingscreen.png',
    'assets/standingunderwear_loadingscreen.png'
  ];

  //Bei erfolgreicher Finanzierung ohne Diamanten zweiten Text ändern auf "Without Limitations"
  static const List<String> titles = [
    'Connect with People',
    'Your way!',
    'Find Your Duo',
  ];

  static const List<String> texts = [
    'Find friends anytime, any where, any situation!',
    'Make some friends with same interests',
    'Make connections that are more meaningful'
  ];

  void initState(){
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((status) {
      if(status == InternetConnectionStatus.disconnected) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoadingPage()));
      }
    });
  }

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
                    style: const TextStyle(
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
                height: MediaQuery.of(context).size.width * 0.4861,
                width: MediaQuery.of(context).size.width * 0.4861,
                child: Text(texts[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.87,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                children: [
                  Column(
                    children: [
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
                      Container(
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
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.0878,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.0878,
                  width: MediaQuery.of(context).size.width * 0.7292,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //Reference Height: 683,428
                      //Reference Width: 411,4285
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.2017,
                            top: MediaQuery.of(context).size.height * 0.0293,
                            right: MediaQuery.of(context).size.width * 0.2017,
                            bottom:
                            MediaQuery.of(context).size.height * 0.0293),
                        primary: const Color(0xFFffe5e5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DecidePage()),
                    ),
                    child: const Text('Next',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1e0412),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}