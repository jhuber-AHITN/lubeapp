import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:app/profile_creation.dart';
class birthday_pick extends StatefulWidget {
  _birthday_pickState createState() => _birthday_pickState();
  var controller;
  birthday_pick(this.controller, {Key? key}) : super(key: key);
}

class _birthday_pickState extends State<birthday_pick> {



late DateTime _selectedDate;




Widget build(BuildContext context) {
  return Stack(children: [
    Container(
      height: 690,
      width: MediaQuery
          .of(context)
          .size
          .width,
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
            children: const [
              Text(
                "What's your birthday?",
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
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.flag,
                color: Colors.white,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: DatePickerWidget(
            looping: true,
            firstDate: DateTime(1950, 01, 01),
            lastDate: DateTime(2030, 1, 1),
            initialDate: DateTime(1990, 9, 12),
            dateFormat: "dd-MMM-yyyy",
            locale: DatePicker.localeFromString('en'),
            onChange: (DateTime newDate, _) => _selectedDate = newDate,
            pickerTheme: const DateTimePickerTheme(
              backgroundColor: Color(0xFF171C3D),
              itemTextStyle: TextStyle(color: Colors.white, fontSize: 21),
              dividerColor: Color(0xFFC9D0FF),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 49),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                    left: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2017,
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.0293,
                    right: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2017,
                    bottom: MediaQuery
                        .of(context)
                        .size
                        .height * 0.0293),
                primary: const Color(0xFFC9D0FF),
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              widget.controller.nextPage(
                  duration: const Duration(
                    milliseconds: 150,
                  ),
                  curve: Curves.linear);
            },
            child: Text(
              'Next',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6,
            ),
          ),
        ),
      ],
    ),
  ]);
}
}