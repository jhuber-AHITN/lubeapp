import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:app/profile_creation.dart';

import 'country_state_city_picker.dart';
import 'introduction/Introduction.dart';

class countries_pick extends StatefulWidget {

  _countries_pickState createState() => _countries_pickState();

  var controller;

  countries_pick(this.controller, {Key? key}) : super(key: key);
}

class _countries_pickState extends State<countries_pick> {
  bool _submitted = false;
  late String countryValue;
  late String stateValue;
  late String cityValue;
  var countries;

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 690,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Color(0xFF171C3D),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
              )),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Where are you from?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lube. is for everyone!",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flag,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 184,
                  child: SelectState(
                    j: Introduction.json,
                    j3: Introduction.json2,
                    dropdownColor: const Color(0xFFC9D0FF),
                    style: TextStyle(color: Colors.white),
                    // style: TextStyle(color: Colors.red),
                    onCountryChanged: (value) {
                      setState(() {
                        countryValue = value;
                      });
                    },
                    onStateChanged: (value) {
                      setState(() {
                        stateValue = value;
                      });
                    },
                    onCityChanged: (value) {
                      setState(() {
                        cityValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 403),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2017,
                      top: MediaQuery.of(context).size.height * 0.0293,
                      right: MediaQuery.of(context).size.width * 0.2017,
                      bottom: MediaQuery.of(context).size.height * 0.0293),
                  primary: const Color(0xFFC9D0FF),
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: () {
                //setState(() => _submitted = true);
                widget.controller.nextPage(
                    duration: const Duration(
                      milliseconds: 150,
                    ),
                    curve: Curves.linear);
              },
              child: Text(
                'Next',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
