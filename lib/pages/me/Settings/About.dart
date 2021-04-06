import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Text("About"),
      ),
    );
  }
}