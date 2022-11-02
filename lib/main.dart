import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:country_state_city_picker/model/select_status_model.dart' as StatusModel;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:flutter_isolate/flutter_isolate.dart';

import 'introduction/Introduction.dart';

// Example of showing an overlay under which the animations are executing.



void main() async {
  runApp(MyApp());
}

//How to start app: flutter run --release --enable-software-rendering --enable-impeller
// COUNTRIES und STÄDTE EINFÜGEN INS JSON

//Movies / Films
//Music
//Social Medias
//Podcasts
//Youtubers
//Streamers
//Documentaries
//Clothes
//Careers
//Celebrities
//Animes
//Fashion Labels

//Hobbies in eigene Widgets aufteilen
//States gucken

//Sachen sind im Calendar
//Trello
//Kommentare in verschiedenen files

//Reference Height: 683,428
//Reference Width: 411,4285
//Aspect Ratio in alle bilder einbauen
//appinio_swiper 1.0.3 Für den swipe effekt ist das beste
//App darf bis 13 jahre gehen, unter 13 jährige müssen ausgeschlossen werden, Amerikanisches Jugenschutzgesetz
//Muss in der Agb drin stehen und Block bei der Registrierung geben

//Want to have unlimited Snapchat Friends? Download Lube.
//Want new people to share your favorite tiktoks with? Download Lube. and begin swiping
//Want to fill your snapmap? Download Lube. and meet new people

//Follow the creators/Lube. Instagram for a days without ads

//Swipe bei profile_creation bei falschen daten blockieren
//Check valid instagram,Tiktok,Snapchat

/*
Smartphone-Apps
Für Smartphone-Apps setze den Link zu
https://icons8.de bitte im "Über uns" Tag oder in den Einstellungen.
Vergiss nicht, uns bei Verwendung auch in deinen
App Store- oder Google Play-Beschreibungen zu erwähnen
(zum Beispiel mit "Icons von Icons8").
 */

/*
Auf ana Swipe card kaun ma auf de verschiedenen eigenschaften draufklicken wo a neichs fenster aufploppt mit
ana beschreibung zu der eigenschaft wie z.b Extroverts = This trait describes a person who loves to express themselves through talking
 */

//make global isolate variable with json data BROO

//Splitup der profile_creation, aber aktuelle Daten weiterhin speichern



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => OverlaySupport.global(
    child: MaterialApp(
      home: Introduction(),
    ),
  );
  }
