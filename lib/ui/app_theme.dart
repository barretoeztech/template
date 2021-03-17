import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  accentColor: Colors.amberAccent,
  buttonColor: Colors.blue,
  //primarySwatch: Colors.blue,
  fontFamily: 'Montserrat',
);

final BoxDecoration boxBlue = BoxDecoration(
  gradient: new LinearGradient(
      colors: [const Color(0xFF00377A), const Color(0xFF075A9E)],
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      stops: [0.2708, 1.0],
      tileMode: TileMode.clamp),
);
