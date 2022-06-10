import 'package:a1_crop/screens/previewscreen.dart';
import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          children: [
            const SizedBox(
              height: 70.0,
            ),
            const Image(
              image: AssetImage(
                'images/a1_crop_logo.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Text(
                'To detect the type of disease, please upload the image of the sample.',
                style: TextStyle(
                  fontFamily: 'GentiumPlus',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: RoundedButton(
                verticalPadding: 20.0,
                color: Colors.black87,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, PreviewScreen.id);
                },
                displayText: 'Upload from Camera',
                width: 0,
                textColor: const Color(0xbce1ffff),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: RoundedButton(
                verticalPadding: 20.0,
                color: Colors.grey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, PreviewScreen.id);
                },
                displayText: 'Choose from Gallery',
                width: 0,
                textColor: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
