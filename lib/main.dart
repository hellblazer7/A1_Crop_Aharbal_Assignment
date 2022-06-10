import 'package:a1_crop/screens/failurescreen.dart';
import 'package:a1_crop/screens/homescreen.dart';
import 'package:a1_crop/screens/loginscreen.dart';
import 'package:a1_crop/screens/previewscreen.dart';
import 'package:a1_crop/screens/splashscreen.dart';
import 'package:a1_crop/screens/successfulscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FailureScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        PreviewScreen.id: (context) => const PreviewScreen(),
        SuccessfulScreen.id: (context) => const SuccessfulScreen(),
        FailureScreen.id: (context) => const FailureScreen(),
      },
    );
  }
}
