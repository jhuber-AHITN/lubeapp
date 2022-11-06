import 'dart:convert';

import 'package:app/cardsDesign.dart';
import 'package:app/peopleList.dart';
import 'package:flutter/cupertino.dart';

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'User.dart';
import 'decideButtonsMain.dart';

class mainPage extends StatefulWidget {
  const mainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  List<cardsDesign> cards = [];
  var jsonData;
  int i = 0;
  @override
  void initState() {
    //_loadCards();
    fetchUser().then((value){
      setState(() {
        _cardsDesign.addAll(value);
      });
    });
    super.initState();
  }

  /*void _loadCards() {
    for (peopleList candidate in candidates) {
      cards.add(
        cardsDesign(
          candidate: candidate,
        ),
      );
    }
  }

   */

  List<User> _users = <User>[];
  List<cardsDesign> _cardsDesign = <cardsDesign>[];

  Future<List<cardsDesign>> fetchUser() async{
    var res = await rootBundle.loadString(
        'assets/data.json');
    var notesJSON  = json.decode(res);
    List<User> users = <User>[];
    List<cardsDesign> cards = <cardsDesign>[];

    for (var user in notesJSON){
      users.add(User.fromJson(user));
      cards.add(cardsDesign(candidate: User.fromJson(user),));

    }

    return cards;

  }

  //How to read from json
  /*static Future getResponse(String s) async {
    var res = await rootBundle.loadString(
        'packages/country_state_city_picker/lib/assets/country.json');
    return jsonDecode(res);
  }
   */

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () {
      return Future.value(false);
    },
    child: CupertinoPageScaffold(
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1017,
                    top: MediaQuery.of(context).size.height * 0.0193,
                    right: MediaQuery.of(context).size.width * 0.1017,
                    bottom: MediaQuery.of(context).size.height * 0.0193),
                primary: const Color(0xFFC9D0FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Likes',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: AppinioSwiper(
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              cards: _cardsDesign,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
                bottom: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 80,
              ),
              swipeLeftButton(controller),
              const SizedBox(
                width: 20,
              ),
              swipeRightButton(controller),
              const SizedBox(
                width: 20,
              ),
              unswipeButton(controller),
            ],
          )
        ],
      ),
    ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    print("the card was swiped to the: " + direction.name);


  }


  void _unswipe(bool unswiped) {
    if (unswiped) {
      print("SUCCESS: card was unswiped");
    } else {
      print("FAIL: no card left to unswipe");
    }
  }
}
