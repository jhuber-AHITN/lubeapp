import 'package:flutter/material.dart';

import 'Recaptcha.dart';

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
            height: MediaQuery.of(context).size.height * 0.6291811280778663,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/robothello_welcome.png"),
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height *  0.041043510069824475,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: const Text('Welcome to Lube.',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Akshar-Bold",
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05852847703049919,
            width: MediaQuery.of(context).size.height * 0.7170140133704884,
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
            height: MediaQuery.of(context).size.height * 0.13168907331862318,
            width: MediaQuery.of(context).size.height *  0.9722223910108319,
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
            height: MediaQuery.of(context).size.height * 0.08047665591693638,
            width: MediaQuery.of(context).size.width * 0.7170140133704884,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
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