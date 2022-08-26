import 'package:app/profile_creation.dart';
import 'package:app/wave_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignInPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordconfirmController = TextEditingController();
  String email = '';
  String password = '';
  String passwordconfirm = '';
  var _text = '';
  bool _submitted = false;
  var _passwordVisible = false;
  var _passwordConfirmVisible = false;
  bool isChecked = false;
  var switchColor = Colors.grey;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordconfirmController.dispose();
    super.dispose();
  }

  String? get _emailerrorText {
    final text = emailController.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.contains('\'')) {
      return 'The character \' is not allowed';
    }
    if (!text.contains('@')) {
      return 'Must contain @';
    }
    if (!text.contains('.')) {
      return 'Must contain .';
    }
    return null;
  }

  String? get _passworderrorText {
    RegExp checkDigit = RegExp('[0-9]');
    RegExp checkUpper = RegExp('(?=.*[A-Z])');
    final text = passwordController.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.contains('\'')) {
      return 'The character \' is not allowed';
    }
    if (text.length < 8) {
      return 'Password must contain 8 characters';
    }

    if (!checkDigit.hasMatch(text)) {
      return 'Must contain a number';
    }

    if (!checkUpper.hasMatch(text)) {
      return 'Must contain atleast one Uppercase character';
    }

    return null;
  }

  String? get _passwordconfirmerrorText {
    final text = passwordconfirmController.value.text;
    final text_password = passwordController.value.text;

    if (text != text_password) {
      return "Passwords don't match";
    }

    return null;
  }

  void _submit() {
    setState(() => _submitted = true);

    if (isChecked == true) {
      if (_emailerrorText == null &&
          _passwordconfirmerrorText == null &&
          _passworderrorText == null) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => birthday_input()));

      }
    } else {
      switchColor = Colors.red;
    }
  }

  Widget build(BuildContext context) {
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },

    child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFCF91FF), Color(0xFF5782F5)],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 4.5 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.8,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.10242483480337357,
                left: MediaQuery.of(context).size.width * 0.048611119550541595),
            child: Column(
              children: [
                Visibility(
                  visible: keyboardOpen ? false : true,
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Akshar-Medium",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  //Reference Height: 683,428
                  //Reference Width: 411,4285
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0100242483480337359, left: MediaQuery.of(context).size.width * 0.006805556737075822),
                  child: Visibility(
                    visible: keyboardOpen ? false : true,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Connect with new people today!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Akshar-Medium",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.17704864301726005),
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.15632119257624797,
                  width: MediaQuery.of(context).size.width * 0.8663194212360106,
                  child: TextField(
                    controller: emailController,
                    onChanged: (email) => setState(() => this.email),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Email',
                      errorText: _submitted ? _emailerrorText : null,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09657198710032366),
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.15632119257624797,
                  width: MediaQuery.of(context).size.width * 0.8663194212360106,
                  child: TextField(
                    controller: passwordController,
                    obscureText: !_passwordVisible,
                    onChanged: (password) => setState(() => this.password),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          }),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Password',
                      errorText: _submitted ? _passworderrorText : null,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3614133456633325),
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.15632119257624797,
                  width: MediaQuery.of(context).size.width * 0.8663194212360106,
                  child: TextField(
                    controller: passwordconfirmController,
                    obscureText: !_passwordConfirmVisible,
                    onChanged: (passwordconfirm) => setState(() => _text),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordConfirmVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordConfirmVisible =
                                  !_passwordConfirmVisible;
                            });
                          }),
                      enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      prefixIcon: const Icon(Icons.password),
                      prefixIconColor: MaterialStateColor.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.focused)) {
                          return Colors.green;
                        }
                        if (states.contains(MaterialState.error)) {
                          return Colors.red;
                        }
                        return Colors.grey;
                      }),
                      labelText: 'Confirm Password',
                      errorText: _submitted ? _passwordconfirmerrorText : null,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.716973843623615, left: MediaQuery.of(context).size.width * 0.05833334346064991),
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor: Colors.blue,
                    trackColor: switchColor,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "I agree to terms and conditions",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.7084453665931159),
            child: Center(
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.2017,
                          top: MediaQuery.of(context).size.height * 0.0293,
                          right: MediaQuery.of(context).size.width * 0.2017,
                          bottom: MediaQuery.of(context).size.height * 0.0293),
                      primary: const Color(0xFFffe5e5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: _submit,
                  child: Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.9130442416757873),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Already have an Account? ",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins-Medium",
                      color: Color(0xFF171C3D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
