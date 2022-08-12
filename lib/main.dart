import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

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
