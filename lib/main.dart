import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF090C21),
        scaffoldBackgroundColor: Color(0xFF090C21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
