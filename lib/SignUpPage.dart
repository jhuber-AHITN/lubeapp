import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DecidePage.dart';
import 'Recaptcha.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.038043510069824475,
            width: MediaQuery
                .of(context)
                .size
                .width,
            alignment: Alignment.center,
            child: const Text('Create Account',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Akshar-Medium",
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.05852847703049919,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.7170140133704884,
            alignment: Alignment.center,
            child: const Text(
              'Connect with new people today!',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Poppins-Regular",
                  color: Color(0x959AA1)
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.13168907331862318,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9722223910108319,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //Reference Height: 683,428
                //Reference Width: 411,4285
                  padding: EdgeInsets.only(
                      left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2617,
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.020,
                      right: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2617,
                      bottom: MediaQuery
                          .of(context)
                          .size
                          .height * 0.020),
                  primary: const Color(0xFF171C3D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () =>
                  Navigator.of(context).push(
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
            //Reference Height: 683,428
            //Reference Width: 411,4285
            height: MediaQuery
                .of(context)
                .size
                .height * 0.08047665591693638,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.7170140133704884,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //Reference Height: 683,428
                //Reference Width: 411,4285
                  padding: EdgeInsets.only(
                      left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2617,
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.020,
                      right: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2617,
                      bottom: MediaQuery
                          .of(context)
                          .size
                          .height * 0.020),
                  primary: Color(0xFFffe5e5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () =>
                  Navigator.of(context).push(
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
