import 'package:app/SignUpPage.dart';
import 'package:app/birthday_pick.dart';
import 'package:app/interests.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';

import 'country_state_city_picker.dart';
import 'introduction/Introduction.dart';

import 'introduction/Introduction.dart';
import 'mainPage.dart';

//Submit methode einbauen
//Male / Female nicht weiterpushen sondern farbe ändern das es ausgewählt ist

class profile_creation extends StatefulWidget {
  static bool _submitted = false;
  static String _selectedCity = "Choose City";
  static String _selectedCountry = "Choose Country";
  static String _selectedState = "Choose State";

  _profile_creationState createState() => _profile_creationState();
}

class _profile_creationState extends State<profile_creation> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController snapchatController = TextEditingController();
  TextEditingController tiktokController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  final controller = PageController(viewportFraction: 1, keepPage: true);
  var _usernametext = "";
  var _nicknametext = "";
  var _instagram = "";
  var _snapchat = "";
  var _tiktok = "";
  late String countryValue;
  late String stateValue;
  late String cityValue;
  String uploadImage = "Upload Image";
  Color uploadImageError = Colors.grey;
  TextEditingController country=TextEditingController();
  TextEditingController state=TextEditingController();
  TextEditingController city=TextEditingController();

  void initState() {
    super.initState();
  }

  Widget _handlePreview() {
    if (isVideo) {
      return Text("Verkackt");
    } else {
      return _previewImages();
    }
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFileList != null) {
      return Semantics(
        label: 'image_picker_example_picked_images',
        child: Container(
          height: MediaQuery.of(context).size.height * 0.215110730025694,
          width: MediaQuery.of(context).size.width * 0.234806547188637,
          child: ListView.builder(
            key: UniqueKey(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.414110730025694,
                width: MediaQuery.of(context).size.width * 0.3134806547188637,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: FileImage(File(
                        _imageFileList![index].path,
                      )),
                      fit: BoxFit.cover,
                    )),
              );
            },
            itemCount: _imageFileList!.length,
          ),
        ),
      );
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        '',
        textAlign: TextAlign.center,
      );
    }
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

  AlertDialog alert_tiktok = const AlertDialog(
    title: Text("Help?"),
    content: Text(
        "This information will be sent to people, who you are interested in\n\n"
        "Therefore please use your unique instagram identifier found in the Tiktok app/website\n\n"
        "If you decide that you want to delete your account \n\nPlease use the \"Delete Profile\"\nButton in your Settings, Thanks!"),
  );

  AlertDialog alert_snapchat = const AlertDialog(
    title: Text("Help?"),
    content: Text(
        "This information will be sent to people, who you are interested in\n\n"
        "Therefore please use your unique instagram identifier found in the Snapchat app/website\n\n"
        "If you decide that you want to delete your account \n\nPlease use the \"Delete Profile\"\nButton in your Settings, Thanks!"),
  );

  AlertDialog alert_instagram = const AlertDialog(
    title: Text("Help?"),
    content: Text(
        "This information will be sent to people, who you are interested in\n\n"
        "Therefore please use your unique instagram identifier found in the Instagram app/website\n\n"
        "If you decide that you want to delete your account \n\nPlease use the \"Delete Profile\"\nButton in your Settings, Thanks!"),
  );

  var genders = [
    'Others',
    'transgender',
    'genderqueer',
    'genderfluid',
    'bigender',
    'pangender',
    'agender',
    'demigender',
    'abinär',
    'Nonbinary',
    'Omnigender',
    'Two Spirit',
    'Private'
  ];

  var sexualities = [
    'Select your sexuality *',
    'Heterosexual',
    'Bisexual',
    'Homosexual',
    'Pansexual',
    'Polysexual',
    'Pomosexual',
    'Allosexual',
    'Androsexual',
    'Asexual',
    'Autosexual',
    'Bi-curious',
    'Biromantic',
    'Closeted',
    'Cupiosexual',
    'Demisexual',
    'Demiromantic',
    'Fluid',
    'Monosexual',
    'Non-libidoist asexual',
    'Omnisexual',
    'Graysexual',
    'Gynesexual',
    'Heteroflexible',
    'Homoflexible',
    'Queer',
    'Questioning',
    'Sapiosexual',
    'Sex-repulsed',
    'Skoliosexual',
    'Private',
  ];

  var sexualities2 = [
    'Select another sexuality',
    'Heterosexual',
    'Bisexual',
    'Homosexual',
    'Pansexual',
    'Polysexual',
    'Pomosexual',
    'Allosexual',
    'Androsexual',
    'Asexual',
    'Autosexual',
    'Bi-curious',
    'Biromantic',
    'Closeted',
    'Cupiosexual',
    'Demisexual',
    'Demiromantic',
    'Fluid',
    'Monosexual',
    'Non-libidoist asexual',
    'Omnisexual',
    'Graysexual',
    'Gynesexual',
    'Heteroflexible',
    'Homoflexible',
    'Queer',
    'Questioning',
    'Sapiosexual',
    'Sex-repulsed',
    'Skoliosexual',
    'Private',
  ];

  var lookingfor = [
    'What are you looking for',
    'Friends',
    'Casual',
    'Committed Relationship',
    'Friends with benefits',
    'Texting Buddy',
    'Call Buddy',
    'Streaks',
    'Open',
    'New people',
  ];

  String gendervalue = 'Others';
  String sexualityvalue = 'Select your sexuality *';
  String sexualityvalue2 = 'Select another sexuality';
  String lookingforvalue = 'What are you looking for';
  late DateTime _selectedDate;
  bool _selected = false;

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    nicknameController.dispose();
    tiktokController.dispose();
    instagramController.dispose();
    controller.dispose();
    snapchatController.dispose();
  }

  List<XFile>? _imageFileList;

  void _setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : <XFile>[value];
  }

  dynamic _pickImageError;
  bool isVideo = false;

  VideoPlayerController? _controller;
  VideoPlayerController? _toBeDisposed;
  String? _retrieveDataError;

  final ImagePicker _picker = ImagePicker();
  final TextEditingController maxWidthController = TextEditingController();
  final TextEditingController maxHeightController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      isVideo = false;
      setState(() {
        if (response.files == null) {
          _setImageFileListFromFile(response.file);
        } else {
          _imageFileList = response.files;
        }
      });
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  Future<void> _onImageButtonPressed(ImageSource source,
      {BuildContext? context, bool isMultiImage = false}) async {
    if (isMultiImage) {
      try {
        final List<XFile>? pickedFileList = await _picker.pickMultiImage(
          maxWidth: 700,
          maxHeight: 600,
          imageQuality: 100,
        );
        setState(() {
          _imageFileList = pickedFileList;
        });
      } catch (e) {
        setState(() {
          _pickImageError = e;
        });
      }
    } else {
      await _displayPickImageDialog(context!,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final XFile? pickedFile = await _picker.pickImage(
            source: source,
            maxWidth: 700,
            maxHeight: 600,
            imageQuality: 100,
          );
          setState(() {
            _setImageFileListFromFile(pickedFile);
          });
        } catch (e) {
          setState(() {
            _pickImageError = e;
          });
        }
      });
    }
  }

  @override
  void deactivate() {
    if (_controller != null) {
      _controller!.setVolume(0.0);
      _controller!.pause();
    }
    super.deactivate();
  }

  Future<void> _displayPickImageDialog(
      BuildContext context, OnPickImageCallback onPick) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add optional parameters'),
            content: Column(
              children: <Widget>[
                TextField(
                  controller: maxWidthController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      hintText: 'Enter maxWidth if desired'),
                ),
                TextField(
                  controller: maxHeightController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      hintText: 'Enter maxHeight if desired'),
                ),
                TextField(
                  controller: qualityController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Enter quality if desired'),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                  child: const Text('PICK'),
                  onPressed: () {
                    final double? width = maxWidthController.text.isNotEmpty
                        ? double.parse(maxWidthController.text)
                        : null;
                    final double? height = maxHeightController.text.isNotEmpty
                        ? double.parse(maxHeightController.text)
                        : null;
                    final int? quality = qualityController.text.isNotEmpty
                        ? int.parse(qualityController.text)
                        : null;
                    onPick(width, height, quality);
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
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

  String? get _snapchaterrorText {
    return null;
  }

  String? get _tiktokerrorText {
    return null;
  }

  String? get _instagramerrorText {
    return null;
  }

  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 1.09616228776111,
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
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14632119257624797 ),
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
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.021948178886437195),
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
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07316059628812399),
              child: DatePickerWidget(
                looping: true,
                firstDate: DateTime(1950, 01, 01),
                lastDate: DateTime(2030, 1, 1),
                initialDate:  _selected ? _selectedDate : DateTime(1990, 9, 12),
                dateFormat: "dd-MMM-yyyy",
                locale: DatePicker.localeFromString('en'),
                onChange: (DateTime newDate, _) {
                    setState(() {
                      _selectedDate = newDate;
                      _selected = true;
                    });
                },
                pickerTheme: const DateTimePickerTheme(
                  backgroundColor: Color(0xFF171C3D),
                  itemTextStyle: TextStyle(color: Colors.white, fontSize: 21),
                  dividerColor: Color(0xFFC9D0FF),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07316059628812399),
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
                  controller.nextPage(
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
          ],
        ),
      ]),
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1.09616228776111,
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14632119257624797),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                //Reference Height: 683,428
//Reference Width: 411,4285
                //MediaQuery.of(context).size.height * 0.021948178886437195
                padding: EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                  children: const [
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
                        icon: const Icon(
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
                    errorText:
                        profile_creation._submitted ? _usernameerrorText : null,
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
                        icon: const Icon(
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
                    errorText:
                        profile_creation._submitted ? _nicknameerrorText : null,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 377),
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
                  setState(() => profile_creation._submitted = true);

                  if (_usernameerrorText == null &&
                      _nicknameerrorText == null) {
                    controller.nextPage(
                        duration: const Duration(
                          milliseconds: 150,
                        ),
                        curve: Curves.linear);
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
                      "What's your gender?",
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
                      "Be yourself :)",
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
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(
                            milliseconds: 150,
                          ),
                          curve: Curves.linear);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/male.png"), // icon

                        Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text(
                            "Male",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ), //
                        ), // text
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
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(
                            milliseconds: 150,
                          ),
                          curve: Curves.linear);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/female.png"), // icon
                        Text(
                          "Female",
                          style: TextStyle(
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
              padding: EdgeInsets.only(top: 300),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                child: DropdownButton(
                  underline: Container(
                    height: 2,
                    color: Colors.indigo,
                  ),
                  value: gendervalue,
                  isExpanded: true,
                  dropdownColor: Colors.indigo,
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: genders.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Container(
                        child: Text(items,
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      gendervalue = newValue!;
                    });
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 455),
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
                  setState(() => profile_creation._submitted = true);

                  if (_usernameerrorText == null &&
                      _nicknameerrorText == null) {
                    controller.nextPage(
                        duration: const Duration(
                          milliseconds: 150,
                        ),
                        curve: Curves.linear);
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
                      "What's your sexuality?",
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
                      "Friends have no limits!",
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
                  padding: EdgeInsets.only(top: 43),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: DropdownButton(
                      value: sexualityvalue,
                      isExpanded: true,
                      dropdownColor: Colors.indigo,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      underline: Container(
                        height: 2,
                        color: Colors.indigo,
                      ),
                      items: sexualities.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Container(
                            child: Text(items,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          sexualityvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: DropdownButton(
                      underline: Container(
                        height: 2,
                        color: Colors.indigo,
                      ),
                      value: sexualityvalue2,
                      isExpanded: true,
                      dropdownColor: Colors.indigo,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: sexualities2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Container(
                            child: Text(items,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          sexualityvalue2 = newValue!;
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
              padding: EdgeInsets.only(top: 400),
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
                  setState(() => profile_creation._submitted = true);
                  controller.nextPage(
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
                      "Tell us about yourself!",
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
                      "Secret Talents?",
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
                  padding: EdgeInsets.only(top: 43),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: DropdownButton(
                      value: lookingforvalue,
                      isExpanded: true,
                      dropdownColor: Colors.indigo,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      underline: Container(
                        height: 2,
                        color: Colors.indigo,
                      ),
                      items: lookingfor.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Container(
                            child: Text(items,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          lookingforvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1517,
                            top: MediaQuery.of(context).size.height * 0.0363,
                            right: MediaQuery.of(context).size.width * 0.1517,
                            bottom:
                                MediaQuery.of(context).size.height * 0.0363),
                        primary: const Color(0xFFC9D0FF),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => interests()),
                      );
                    },
                    child: Text(
                      'Pick some interests',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 400),
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
                  setState(() => profile_creation._submitted = true);

                  controller.nextPage(
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
                    child: CountryStateCityPicker(
                      country: country,
                      state: state,
                      city: city,
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
                  controller.nextPage(
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
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "What are your socials?",
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
                  children: const [
                    Text(
                      "This can be changed later on",
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
                  children: const [
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
            padding: EdgeInsets.only(top: 175, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: snapchatController,
                  onChanged: (username) => setState(() => _snapchat),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFC9D0FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.snapchat),
                    suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.help,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert_snapchat;
                            },
                          );
                        }),
                    hintText: "Snapchat",
                    errorText:
                        profile_creation._submitted ? _snapchaterrorText : null,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 270, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: tiktokController,
                  onChanged: (username) => setState(() => _tiktok),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFC9D0FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.tiktok),
                    suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.help,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert_tiktok;
                            },
                          );
                        }),
                    hintText: "TikTok",
                    errorText:
                        profile_creation._submitted ? _tiktokerrorText : null,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 365, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: instagramController,
                  onChanged: (nickname) => setState(() => _instagram),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFC9D0FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.help,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert_instagram;
                            },
                          );
                        }),
                    prefixIcon: const Icon(Icons.camera_alt),
                    hintText: "Instagram",
                    errorText: profile_creation._submitted
                        ? _instagramerrorText
                        : null,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 423),
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
                  setState(() => profile_creation._submitted = true);

                  if (_tiktokerrorText == null &&
                      _instagramerrorText == null &&
                      _snapchaterrorText == null) {
                    controller.nextPage(
                        duration: const Duration(
                          milliseconds: 150,
                        ),
                        curve: Curves.linear);
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
            height: MediaQuery.of(context).size.height * 1.09616228776111,
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
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        0.074623808213886464),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "What do you look like?",
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
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        0.005852847703049919),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "A picture to start with",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top:
                      MediaQuery.of(context).size.height * 0.02589935777287439),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.400,
                width: MediaQuery.of(context).size.width * 0.5894806547188637,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      _onImageButtonPressed(
                        ImageSource.gallery,
                        context: context,
                        isMultiImage: true,
                      );
                    },
                    child: Text(uploadImage,
                        style: TextStyle(
                          color: uploadImageError,
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ))), // text
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.6421293069643035),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => mainPage()),
                  );
                },
                child: Text(
                  'Finish',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.209955365012847,
            left: MediaQuery.of(context).size.width * 0.2016348,
            child: IgnorePointer(
              ignoring: true,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.425110730025694,
                width: MediaQuery.of(context).size.width * 0.5994806547188637,
                child:
                    !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                        ? FutureBuilder<void>(
                            future: retrieveLostData(),
                            builder: (BuildContext context,
                                AsyncSnapshot<void> snapshot) {
                              switch (snapshot.connectionState) {
                                case ConnectionState.none:
                                case ConnectionState.waiting:
                                  return Text("");
                                case ConnectionState.done:
                                  return _handlePreview();
                                default:
                                  if (snapshot.hasError) {
                                    return Text(
                                        'Pick image error: ${snapshot.error}}');
                                  } else {
                                    return const Text("");
                                  }
                              }
                            },
                          )
                        : _handlePreview(),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.386,
            left: MediaQuery.of(context).size.width * 0.353,
            child: IgnorePointer(
              ignoring: true,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                height: MediaQuery.of(context).size.height * 0.3587041,
                width: MediaQuery.of(context).size.width * 0.5840,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/dog.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.398,
            right: MediaQuery.of(context).size.width * 0.434,
            child: IgnorePointer(
              ignoring: true,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                height: MediaQuery.of(context).size.height * 0.3587041,
                width: MediaQuery.of(context).size.width * 0.5840,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bird.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFC9D0FF),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: ListView(
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
                      top: MediaQuery.of(context).size.height *
                          0.079351006982447),
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
      ),
    );
  }
}

typedef OnPickImageCallback = void Function(
    double? maxWidth, double? maxHeight, int? quality);
