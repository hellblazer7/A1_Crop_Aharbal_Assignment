import 'package:a1_crop/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, LoginScreen.id);
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/splash_screen_A1_Crop.png'),
              opacity: 0.75,
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage(
                  'images/a1_crop_logo.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Text(
                  'Modern tool to predict, detect diseases',
                  style: TextStyle(
                    fontFamily: 'GentiumPlus',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
