import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class LanguagePage extends StatefulWidget {
  LanguagePage({Key key}) : super(key: key);

  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: GlobalConfig.barColor,
        appBar: AppBar(
          title: Text("Language"),
          backgroundColor: GlobalConfig.barColor,
        ),
        body: new Container(
          child: new Text(
            "Language",
            // style: new TextStyle(
            //     color: GlobalConfig.fontColor, fontSize: 22.0)
          ),
        ));
  }
}
