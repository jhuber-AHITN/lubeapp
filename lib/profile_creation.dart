import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//Submit methode einbauen

class birthday_input extends StatefulWidget {
  @override
  _birthday_inputState createState() => _birthday_inputState();
}

class _birthday_inputState extends State<birthday_input> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  late DateTime _selectedDate;
  TextEditingController usernameController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  var _usernametext = "";
  var _nicknametext = "";
  bool _submitted = false;

  void initState() {
    super.initState();
  }

  AlertDialog alert_nickname = const AlertDialog(
    title: Text("Help?"),
    content: Text("This is what other people will see on your profile \n"
        "Duplicates allowed \n \n"
        "Recommended: First Name"),
  );

  AlertDialog alert_username = const AlertDialog(
    title: Text("Help?"),
    content: Text("This is your unique identity\n"
        "Can't be changed later on\n"
        "Duplicates not allowed \n \n"
        "Recommended: \nAttribute of yourself \nFirst Name with numbers"),
  );

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String dropdownvalue = 'Item 1';

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    nicknameController.dispose();
  }

  String? get _usernameerrorText {
    final text = usernameController.value.text;
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.contains('\'')) {
      return 'The character \' is not allowed';
    }
    return null;
  }

  String? get _nicknameerrorText {
    final text = nicknameController.value.text;
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.contains('\'')) {
      return 'The character \' is not allowed';
    }
    return null;
  }

  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      Stack(children: [
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
                children: [
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
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2017,
                        top: MediaQuery.of(context).size.height * 0.0293,
                        right: MediaQuery.of(context).size.width * 0.2017,
                        bottom: MediaQuery.of(context).size.height * 0.0293),
                    primary: const Color(0xFFC9D0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(
                        milliseconds: 600,
                      ),
                      curve: Curves.ease);
                },
                child: Text(
                  'Next',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ],
        ),
      ]),
      Stack(
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
                      "What's your username?",
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
                      "Your friends are waiting!",
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
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 230, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: usernameController,
                  onChanged: (username) => setState(() => _usernametext),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFC9D0FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.help,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert_username;
                            },
                          );
                        }),
                    hintText: "username",
                    errorText: _submitted ? _usernameerrorText : null,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 334, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nicknameController,
                  onChanged: (nickname) => setState(() => _nicknametext),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFC9D0FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.help,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert_nickname;
                            },
                          );
                        }),
                    prefixIcon: const Icon(Icons.people),
                    hintText: "nickname",
                    errorText: _submitted ? _nicknameerrorText : null,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 375),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2017,
                        top: MediaQuery.of(context).size.height * 0.0293,
                        right: MediaQuery.of(context).size.width * 0.2017,
                        bottom: MediaQuery.of(context).size.height * 0.0293),
                    primary: const Color(0xFFC9D0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  setState(() => _submitted = true);

                  if (_usernameerrorText == null &&
                      _nicknameerrorText == null) {
                    controller.nextPage(
                        duration: const Duration(
                          milliseconds: 400,
                        ),
                        curve: Curves.easeIn);
                  }
                  ;
                },
                child: Text(
                  'Next',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
      Stack(
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
                      "What's your username?",
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
                      "Your friends are waiting!",
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
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 230, left: 25),
                child: Container(
                  height: 160,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(
                            milliseconds: 600,
                          ),
                          curve: Curves.ease);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/male.png"), // icon

                        Padding(
                          padding: EdgeInsets.only(top: 19 ),
                        child: Text("Male", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        ), //
                        ),// text
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 230, left: 40),
                child: Container(
                  height: 160,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFC9D0FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(
                            milliseconds: 600,
                          ),
                          curve: Curves.ease);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/female.png"), // icon
                        Text("Female", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        ), // text
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),


          Center(
          child: Padding(
            padding: EdgeInsets.only(top: 350),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
          height: 100,
          color: Colors.green,
          child: DropdownButton(
            value: dropdownvalue,

            dropdownColor: Colors.blue,
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Container(
                  color: Colors.pink,
                  child: Text(items),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),

          ),
          ),
    ),
          
        ],
      ),
      Stack(
        children: [
          Text("super"),
        ],
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFC9D0FF),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        0.0404351006982447),
                child: Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: list.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 16,
                      dotWidth: 16,
                      dotColor: Colors.white60,
                      activeDotColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top:
                        MediaQuery.of(context).size.height * 0.079351006982447),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8216,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      return list[index % list.length];
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
