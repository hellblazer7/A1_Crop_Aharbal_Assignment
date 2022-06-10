import 'package:a1_crop/screens/successfulscreen.dart';
import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';

class PreviewScreen extends StatefulWidget {
  static const String id = 'preview_screen';
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  // Initial Selected Value
  String dropDownValue = 'Disease Related';

  // List of items in our dropdown menu
  var items = [
    'Disease Related',
    'Insect Related',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splash_screen_A1_Crop.png"),
            opacity: 0.75,
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
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
              image: AssetImage('images/a1_crop_logo.png'),
              height: 48.3,
              width: 176.4,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 400.0,
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
                child: Center(
                  child: Text(
                    'Image',
                    style: TextStyle(
                      fontFamily: 'GentiumPlus',
                      color: Colors.grey[600],
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: DropdownButton(
                  dropdownColor: Colors.black87,
                  value: dropDownValue,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'GentiumPlus',
                    fontSize: 22.0,
                  ),

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          right: 10.0,
                          bottom: 20.0,
                        ),
                        child: Text(items),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: RoundedButton(
                verticalPadding: 10.0,
                color: Colors.grey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, SuccessfulScreen.id);
                },
                displayText: 'Submit',
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
