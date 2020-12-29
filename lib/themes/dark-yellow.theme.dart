import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFFFFCC00);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData darkYellowTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.black26,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(color: Colors.grey), //body1
      headline1: new TextStyle(fontSize: 78), //display4
      button: new TextStyle(color: Colors.green),
      headline5: new TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ), //headline
    ),
  );
}
