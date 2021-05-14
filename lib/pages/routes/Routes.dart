import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/home/voice.dart';
import 'package:garbage_classification/pages/me/image.dart';
import 'package:garbage_classification/pages/me/user/RegisterFirst.dart';
import 'package:garbage_classification/pages/me/user/RegisterSecond.dart';
import 'package:garbage_classification/pages/me/user/RegisterThird.dart';
import 'package:garbage_classification/pages/me/user/forget/ForgetFirst.dart';
import 'package:garbage_classification/pages/me/user/forget/ForgetSecond.dart';
import 'package:garbage_classification/pages/me/user/forget/ForgetThird.dart';
import 'package:garbage_classification/pages/me/user/section/favorites.dart';
import 'package:garbage_classification/pages/me/user/section/mywork.dart';
import 'package:garbage_classification/pages/me/user/section/recent.dart';
import 'package:garbage_classification/pages/me/user/section/subscribes.dart';
import '../opening/Open.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';
import 'package:garbage_classification/pages/me/user/Login.dart';

final routes = {
  '/': (context) => Open(),
  // '/': (context) => ImagePickerPage(),
  '/tabs': (context) => Tabs(),
  '/login': (context) => LoginPage(),
  '/mywork': (context) => MyworkPage(),
  '/subscribes': (context) => SubPage(),
  '/favorites': (context) => favoritesPage(),
  '/recent': (context) => RecentPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context,{arguments}) => RegisterSecondPage(arguments:arguments),
  '/registerThird': (context,{arguments}) => RegisterThirdPage(arguments:arguments),
  "/images": (context) => ImagePickerPage(),
  "/voice":(context) => VoicePage(),
  '/forgetFirst':(context) => ForgetFirstPage(),
  '/forgetSecond':(context,{arguments}) => ForgetSecondPage(arguments:arguments),
  '/forgetThird':(context,{arguments}) => ForgetThirdPage(arguments:arguments),

};
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
