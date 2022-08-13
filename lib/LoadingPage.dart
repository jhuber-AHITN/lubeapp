import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_support/overlay_support.dart';

import 'DecidePage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>  with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF171C3D), Color(0xFF0C1026), Color(0xFF010310)],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[

                Container(
                  alignment: Alignment.center,
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: Lottie.asset('assets/error-page-animation.json'),
                ),


                Container(
                  alignment: Alignment.center,
                  height: 65,
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    height: 45,
                    width: 45,
                  child: CircularProgressIndicator(
                      value: controller.value,
                      semanticsLabel: 'Linear progress indicator',
                      backgroundColor: Color(0xFF1e0412),
                      color: Color(0xFFffe5e5) ,
                  ),
                ),
                ),

                Container(
                  alignment: Alignment.center,
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //Reference Height: 683,428
                      //Reference Width: 411,4285
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.2017,
                            top: MediaQuery.of(context).size.height * 0.0293,
                            right: MediaQuery.of(context).size.width * 0.2017,
                            bottom: MediaQuery.of(context).size.height * 0.0293),
                        primary: const Color(0xFFffe5e5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () =>
                        showSimpleNotification(
                          const Text("No connection", style: TextStyle(color:Colors.white, fontSize:20)),
                          background: Colors.red,
                        ),
                    child: const Text('Retry',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1e0412),
                        )),
                  ),

                ),


              ],
            ),
          ),
        ),
      );
}

/*
  Container(
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
          onPressed: () =>
              showSimpleNotification(
                const Text("No connection", style: TextStyle(color:Colors.white, fontSize:20)),
                background: Colors.red,
              ),
          child: const Text('Next',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1e0412),
              )),
        ),
        ),
   */
