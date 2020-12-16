import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.white,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(color: Colors.red), //body1
      headline1: new TextStyle(fontSize: 78), //display4
      button: new TextStyle(color: Colors.green),
    ),
  );
}
