import 'dart:io';
import 'dart:ui';

import 'package:app/LoadingPage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../DecidePage.dart';

class IntroductionScroll extends StatefulWidget {
  @override
  _IntroductionScrollState createState() => _IntroductionScrollState();
}


/*
    Use Provider library, so using it you can stop unwanted build method calling

In these below situation build method call

    After calling initState
    After calling didUpdateWidget
    when setState() is called.
    when keyboard is open
    when screen orientation changed
    If Parent widget is build then child widget also rebuild
 */






class _IntroductionScrollState extends State<IntroductionScroll>
    with WidgetsBindingObserver {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  static List<String> images = [
    'assets/earth_loadingscreen.png',
    'assets/desktopsitter_loadingscreen.png',
    'assets/standingunderwear_loadingscreen.png'
  ];

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

  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
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
                        fontSize: 26,
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
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
            ),
          ],
        ));

    return PageView(
                children: [
                  Column(
                    children: [
                      Container(),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7519,
                        child: NotificationListener<
                            OverscrollIndicatorNotification>(
                          onNotification: (overscroll) {
                            overscroll.disallowIndicator();
                            return false;
                          },
                          child: PageView.builder(
                            controller: controller,
                            //itemCount: pages.length,
                            itemBuilder: (_, index) {
                              return pages[index % pages.length];
                            },
                          ),
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
    );
  }
}
