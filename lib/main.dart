import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

//import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(MyApp());
}

//Reference Height: 683,428
//Reference Width: 411,4285

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
                    height: MediaQuery.of(context).size.height * 0.1463,
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

//Maybe change StatelessWidget
class DecidePage extends StatefulWidget {
  @override
  _DecidePageState createState() => _DecidePageState();
}

class _DecidePageState extends State<DecidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            //color: Colors.red,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
            width: MediaQuery.of(context).size.width,
            height: 430,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/robothello_welcome.png"),
              ),
            ),
          ),
          Container(
            height: 26,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: const Text('Welcome to Lube.',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Akshar-Bold",
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 40,
            width: 295,
            alignment: Alignment.center,
            child: const Text(
              'Finding a date should be simple and fun. \nThere’s someone for everyone!',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Abhaya Libre Medium",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 90,
            width: 400,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //Reference Height: 683,428
                  //Reference Width: 411,4285
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2617,
                      top: MediaQuery.of(context).size.height * 0.020,
                      right: MediaQuery.of(context).size.width * 0.2617,
                      bottom: MediaQuery.of(context).size.height * 0.020),
                  primary: const Color(0xFF171C3D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Recaptcha()),
              ),
              child: const Text('Sign Up',
                  style: TextStyle(
                    fontFamily: "Abhaya Libre Medium",
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            height: 55,
            width: 295,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //Reference Height: 683,428
                  //Reference Width: 411,4285
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2617,
                      top: MediaQuery.of(context).size.height * 0.020,
                      right: MediaQuery.of(context).size.width * 0.2617,
                      bottom: MediaQuery.of(context).size.height * 0.020),
                  primary: Color(0xFFffe5e5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DecidePage()),
              ),
              child: const Text('Sign in',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF1e0412),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class Recaptcha extends StatefulWidget {
  @override
  _Recaptcha createState() => _Recaptcha();
}

class _Recaptcha extends State<Recaptcha> {
  void initState() {
    super.initState();

    // Enable virtual display.
    /*  if (Theme
        .of(context)
        .platform == TargetPlatform.android) {
      WebView.platform = AndroidWebView();
    }

   */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller){
            controller.loadUrl("assets/index.html");
          },
          javascriptChannels: {
            JavascriptChannel(name: 'Captcha', onMessageReceived: (JavascriptMessage message){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Introduction()));
            })
          },
        ),
      ),
    );
  }
}
