import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';

class FailureScreen extends StatefulWidget {
  static const String id = 'failure_screen';
  const FailureScreen({Key? key}) : super(key: key);

  @override
  State<FailureScreen> createState() => _FailureScreenState();
}

class _FailureScreenState extends State<FailureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash_screen_A1_Crop.png'),
            opacity: 0.75,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            const Image(
              image: AssetImage(
                'images/a1_crop_logo.png',
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            const Image(
              image: AssetImage('images/failure.png'),
              height: 200.0,
              width: 200.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Text(
                'Failure',
                style: TextStyle(
                  fontFamily: 'GentiumPlus',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: RoundedButton(
                verticalPadding: 20.0,
                color: Colors.black87,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {},
                displayText: 'Try Again',
                width: 0,
                textColor: const Color(0xbce1ffff),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
