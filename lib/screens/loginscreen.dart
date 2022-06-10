import 'package:a1_crop/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../components/round_icon_button.dart';
import '../components/roundedbutton.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/header_for_a1_crop.png"),
            opacity: 0.75,
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            const Image(
              image: AssetImage('images/a1_crop_logo.png'),
              height: 48.3,
              width: 176.4,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 30,
                      spreadRadius: 0.5,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: double.infinity,
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 100.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RoundedButton(
                              verticalPadding: 0,
                              textColor: Colors.black87,
                              onPressed: () {},
                              displayText: 'Login',
                              width: 0.0,
                              color: const Color(0xbce1ffff),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: RoundedButton(
                              verticalPadding: 0,
                              textColor: const Color(0xbce1ffff),
                              onPressed: () {},
                              displayText: 'Sign up',
                              width: 0.0,
                              color: Colors.black87,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Username',
                        ),
                      ),
                      TextField(
                        obscureText: isPasswordObscured,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordObscured = !isPasswordObscured;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RoundedButton(
                        verticalPadding: 0,
                        textColor: Colors.black87,
                        onPressed: () {
                          Navigator.popAndPushNamed(context, HomeScreen.id);
                        },
                        width: 180.0,
                        displayText: 'Login',
                        color: const Color(0xbce1ffff),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'GentiumPlus',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RoundIconButton(
                            onPress: () {},
                            icon: 'images/facebook.png',
                          ),
                          RoundIconButton(
                            icon: 'images/google.png',
                            onPress: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
