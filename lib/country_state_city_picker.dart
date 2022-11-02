library country_state_city_picker_nona;

import 'dart:convert';

import 'package:country_state_city_picker/model/select_status_model.dart'
    as StatusModel;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class SelectState extends StatefulWidget {
  final ValueChanged<String> onCountryChanged;
  final ValueChanged<String> onStateChanged;
  final ValueChanged<String> onCityChanged;
  final TextStyle? style;
  final Color? dropdownColor;
  static String _selectedCity = "Choose City";
  static String _selectedCountry = "Choose Country";
  static String _selectedState = "Choose State";
  var j;
  List<String> j3;

  SelectState(
      {Key? key,
      required this.onCountryChanged,
      required this.onStateChanged,
      required this.onCityChanged,
      this.style,
      this.dropdownColor,
      required this.j,
      required this.j3
      })
      : super(key: key);

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  List<String> _cities = [SelectState._selectedCity];
  List<String> _states = [SelectState._selectedState];
  var responses;

  @override
  void initState() {
    super.initState();
  }

  //ISOLATES
  //Aufteilen

  Future getState() async {
    var response = jsonDecode(widget.j);
    var takestate = response
        .map((map) => StatusModel.StatusModel.fromJson(map))
        .where((item) => item.emoji + "    " + item.name == SelectState._selectedCountry)
        .map((item) => item.state)
        .toList();
    var states = takestate as List;
    states.forEach((f) {
      if (!mounted) return;
      setState(() {
        var name = f.map((item) => item.name).toList();
        for (var statename in name) {
          _states.add(statename.toString());
        }
      });
    });

    return _states;
  }

  Future getCity() async {
    var response = jsonDecode(widget.j);
    var takestate = response
        .map((map) => StatusModel.StatusModel.fromJson(map))
        .where((item) => item.emoji + "    " + item.name == SelectState._selectedCountry)
        .map((item) => item.state)
        .toList();
    var states = takestate as List;
    states.forEach((f) {
      var name = f.where((item) => item.name == SelectState._selectedState);
      var cityname = name.map((item) => item.city).toList();
      cityname.forEach((ci) {
        if (!mounted) return;
        setState(() {
          var citiesname = ci.map((item) => item.name).toList();
          for (var citynames in citiesname) {
            _cities.add(citynames.toString());
          }
        });
      });
    });
    return _cities;
  }

  void _onSelectedCountry(String value) {
    if (!mounted) return;
    setState(() {
      SelectState._selectedState = "Choose State";
      _states = ["Choose State"];
      SelectState._selectedCountry = value;
      this.widget.onCountryChanged(value);
      getState();
    });
  }

  void _onSelectedState(String value) {
    if (!mounted) return;
    setState(() {
      SelectState._selectedCity = "Choose City";
      _cities = ["Choose City"];
      SelectState._selectedState = value;
      this.widget.onStateChanged(value);
      getCity();
    });
  }

  void _onSelectedCity(String value) {
    if (!mounted) return;
    setState(() {
      SelectState._selectedCity = value;
      this.widget.onCityChanged(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<String>(
          underline: Container(
            height: 2,
            color: Colors.indigo,
          ),
          dropdownColor: widget.dropdownColor,
          isExpanded: true,
          items: widget.j3.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Row(
                children: [
                  Text(
                    dropDownStringItem,
                    style: widget.style,
                  )
                ],
              ),
            );
          }).toList(),
          onChanged: (value) => _onSelectedCountry(value!),
          value: SelectState._selectedCountry,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: DropdownButton<String>(
            underline: Container(
              height: 2,
              color: Colors.indigo,
            ),
            dropdownColor: widget.dropdownColor,
            isExpanded: true,
            items: _states.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem, style: widget.style),
              );
            }).toList(),
            onChanged: (value) => _onSelectedState(value!),
            value: SelectState._selectedState,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: DropdownButton<String>(
            dropdownColor: widget.dropdownColor,
            isExpanded: true,
            underline: Container(
              height: 2,
              color: Colors.indigo,
            ),
            items: _cities.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem, style: widget.style),
              );
            }).toList(),
            onChanged: (value) => _onSelectedCity(value!),
            value: SelectState._selectedCity,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
