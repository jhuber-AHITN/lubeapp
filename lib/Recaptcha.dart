import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import 'SignUpPage.dart';

class Recaptcha extends StatefulWidget {
  @override
  _Recaptcha createState() => _Recaptcha();
}

class _Recaptcha extends State<Recaptcha> {
  late WebViewPlusController _controller;
  double _height = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller){
          _controller = controller;
          controller.loadUrl("assets/index.html");

        },
        //Anzeigen lassen
        onProgress: (int progress) {
          print("WebView is loading(progress : $progress%)");
        },
        javascriptChannels: {
          JavascriptChannel(name: 'Captcha', onMessageReceived: (JavascriptMessage message){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
          })

        },

        onPageFinished: (url) async {
          final response = await http.get(
            Uri.parse(url),
          );
          if(response.statusCode != 200){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUpPage()));
          }
          _controller.getHeight().then((double height){
            setState((){
              _height = height;
            });
          });
        },
      ),
    );
  }
}