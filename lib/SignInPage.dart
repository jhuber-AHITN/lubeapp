import 'package:app/wave_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';
  var _text = '';
  bool _submitted = false;
  var _passwordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  String? get _errorText {
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
    final text = passwordController.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.contains('\'')) {
      return 'The character \' is not allowed';
    }
    return null;
  }

  void _submit() {
    setState(() => _submitted = true);
    if (_errorText == null && _passworderrorText == null) {}
  }

  Widget build(BuildContext context) {
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            top: keyboardOpen ? -size.height / 3.9 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 2.61,
              color: Colors.white,
            ),
          ),
            Container(
              height: MediaQuery.of(context).size.height * 0.43264238515249595,
              width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: keyboardOpen ? false : true,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.39179,
                    height: MediaQuery.of(context).size.height * 0.15948178886437198,
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Hello,\nWelcome!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "Akshar-Medium",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: keyboardOpen ? false : true,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.504206301175837,
                    width: MediaQuery.of(context).size.width * 0.504206301175837,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/rocket_signup.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0404351006982447),
            child: Center(
              child: Container(
                  height:
                      MediaQuery.of(context).size.height * 0.15632119257624797,
                  width: MediaQuery.of(context).size.width * 0.8663194212360106,
                  child: TextField(
                    controller: emailController,
                    onChanged: (email) => setState(() => _text),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Email',
                      errorText: _submitted ? _errorText : null,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3804351006982447),
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.18290149072031,
                  width: MediaQuery.of(context).size.width * 0.8663194212360106,
                  child: TextField(
                    obscureText: !_passwordVisible,
                    controller: passwordController,
                    onChanged: (password) => setState(() => _text),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {_passwordVisible = !_passwordVisible;
                            });
                          }),
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Password',
                      errorText: _submitted ? _passworderrorText : null,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.6584453665931159),
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
                    'Sign in',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
