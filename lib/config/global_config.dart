import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData = new ThemeData.dark();
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
  static Color barColor = Colors.grey;
  static Color rowColor = Colors.black45;
  static Color arrowColor = Colors.white;

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
    'pic1' : "images/residual2.png",
    'pic2' : "images/wet2.png",
    'pic3' : "images/recyclable2.png",
    'pic4' : "images/other2.png",
  };

  static List favoritesGarbage = [];
  static Map<String, String> favoritesPic = {};
}