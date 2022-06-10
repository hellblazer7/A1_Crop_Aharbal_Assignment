import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';

class SuccessfulScreen extends StatefulWidget {
  static const String id = 'successful_screen';
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
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
              image: AssetImage('images/successful.png'),
              height: 250.0,
              width: 300.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Text(
                'Image Uploaded Successfully',
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
              height: 20.0,
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
                displayText: 'Upload More',
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
