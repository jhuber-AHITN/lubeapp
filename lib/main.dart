import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'Introduction.dart';
void main() {
  runApp(MyApp());
}

//Reference Height: 683,428
//Reference Width: 411,4285

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => OverlaySupport.global(
    child: MaterialApp(
      home: Introduction(),
    ),
  );
  }
