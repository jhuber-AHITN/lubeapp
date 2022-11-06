import 'dart:math';

import 'package:flutter/cupertino.dart';

class User {
  String username;
  String nickname;
  String age;
  String interests;
  String birthday;
  String gender;
  String sexuality;
  String lookingfor;
  String country;
  String state;
  String city;
  String snapchat;
  String tiktok;
  String instagram;
  String image;
  LinearGradient gradient;

  static const LinearGradient gradientRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF3868),
      Color(0xFFFFB49A),
    ],
  );

  static const LinearGradient gradientPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF736EFE),
      Color(0xFF62E4EC),
    ],
  );

  static const LinearGradient gradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0BA4E0),
      Color(0xFFA9E4BD),
    ],
  );

  static const LinearGradient gradientPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFF6864),
      Color(0xFFFFB92F),
    ],
  );

  static const LinearGradient kNewFeedCardColorsIdentityGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF7960F1),
      Color(0xFFE1A5C9),
    ],
  );


  User(this.username, this.nickname, this.age, this.interests, this.birthday, this.gender,
      this.sexuality, this.lookingfor, this.country, this.state, this.city, this.snapchat, this.tiktok, this.instagram, this.image, this.gradient
      );



  factory User.fromJson(dynamic json) {
    return User(json['username'] as String, json['nickname'] as String, json['age'] as String, json['interests'] as String,
    json["birthday"] as String, json["gender"] as String, json["sexuality"] as String, json["lookingfor"] as String, json["country"] as String, json["state"] as String, json["city"] as String, json["snapchat"] as String, json["tiktok"] as String, json["instagram"] as String, json["image"] as String, User.getRandomColor());
  }

  static var rng = Random();
  static LinearGradient getRandomColor(){
    LinearGradient s = gradientRed;
    int randomNumber = rng.nextInt(4);

    if(randomNumber == 0){
      s = gradientBlue;
    }else if(randomNumber == 1){
      s = gradientPink;
    }else if(randomNumber == 2){
      s = gradientPurple;
    }else if(randomNumber == 3){
      s = gradientRed;
    }


print(s);
    return s;
  }
}
