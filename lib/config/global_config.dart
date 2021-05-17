import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = false;
  static ThemeData themeData = new ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: new Color(0xFFEBEBEB),
  );
  static Color searchBackgroundColor = new Color(0xFFEBEBEB);
  static Color cardBackgroundColor = Colors.white;
  static Color fontColor = Colors.black54;
  static Color barColor = Colors.grey;
  static Color rowColor = Colors.white;
  static Color arrowColor = Colors.black;

  static double fontSize = 20.0;
  static bool textSizeChecka = false;
  static bool textSizeCheckb = true;
  static bool textSizeCheckc = false;

  static Color themeColor = Colors.white;
  static bool themeColorsCheckWhite = true;
  static bool themeColorsCheckBlack = false;
  static bool themeColorsCheckPink = false;
  static bool themeColorsCheckYellow = false;
  static bool themeColorsCheckBlue = false;
  static bool themeColorsCheckRed = false;
  static bool themeColorsCheckGreen = false;

  static bool switchAccounta = true;
  static bool switchAccountb = false;
  static bool switchAccountc = false;

  static bool Languagea = true;
  static bool Languageb = false;
  static bool Languagec = false;

  static Map<String, String> fourPic = {
    'pic1' : "images/residual.png",
    'pic2' : "images/wet.png",
    'pic3' : "images/recyclable.png",
    'pic4' : "images/other.png",
  };

  static List favoritesGarbage = [];
  static Map<String, String> favoritesPic = {};

  static int colorIndex = 1;
}