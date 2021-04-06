import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class TextSizePage extends StatefulWidget {
  TextSizePage({Key key}) : super(key: key);

  _TextSizePageState createState() => _TextSizePageState();
}

class _TextSizePageState extends State<TextSizePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Text Size"),
        ),
        body: Text("TextSize"),
      ),
    );
  }
}
