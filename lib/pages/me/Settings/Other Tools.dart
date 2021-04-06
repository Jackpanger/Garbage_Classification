import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class OtherToolsPage extends StatefulWidget {
  OtherToolsPage({Key key}) : super(key: key);
  _OtherToolsPageState createState() => _OtherToolsPageState();
}

class _OtherToolsPageState extends State<OtherToolsPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Other Tools"),
        ),
        body: Text("Other Tools"),
      ),
    );
  }
}