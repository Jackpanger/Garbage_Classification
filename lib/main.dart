import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/opening/Open.dart';
import 'pages/tabs/Tabs.dart';
import 'pages/routes/Routes.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home : Open(),
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}

