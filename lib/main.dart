import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff44ff77),
        scaffoldBackgroundColor: Color(0x99f1bbee),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color.fromRGBO(56, 200, 203, 0.75),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

// https://api.flutter.dev/flutter/material/ThemeData-class.html

// https://flutter.dev/docs/cookbook/design/themes
