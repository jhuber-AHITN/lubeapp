import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:app/LoadingPage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../DecidePage.dart';
import '../main.dart';
import 'IntroductionScroll.dart';

class Introduction extends StatefulWidget {
  static var json;
  static List<String> json2 = [];
  @override
  _IntroductionState createState() => _IntroductionState();
}

/*


    Create child Statefull class for individual small part of UI

    Use Provider library, so using it you can stop unwanted build method calling

In these below situation build method call

    After calling initState
    After calling didUpdateWidget
    when setState() is called.
    when keyboard is open
    when screen orientation changed
    If Parent widget is build then child widget also rebuild
 */

class _IntroductionState extends State<Introduction>
    with WidgetsBindingObserver {
  bool hasInternet = false;
  var s = AppLifecycleState.resumed;
  ConnectivityResult result = ConnectivityResult.none;

  //Bei erfolgreicher Finanzierung ohne Diamanten zweiten Text ändern auf "Without Limitations"

  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    InternetConnectionChecker().onStatusChange.listen((status) {
      if (status == InternetConnectionStatus.disconnected &&
          s != AppLifecycleState.paused) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoadingPage()));
      }
    });
  }

  static Future getResponse(String s) async {
    var res = await rootBundle.loadString(
        'packages/country_state_city_picker/lib/assets/country.json');
    return jsonDecode(res);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    s = state;
    print(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Widget build(BuildContext context) {
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
              child: IntroductionScroll(),
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DecidePage()),
                      );
                    },
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
