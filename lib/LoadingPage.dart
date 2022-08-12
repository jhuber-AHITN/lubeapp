import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) => WillPopScope (
      onWillPop: () {return Future.value(false);},
      child: Scaffold(
      body: Container(
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
      )
    );
  }

