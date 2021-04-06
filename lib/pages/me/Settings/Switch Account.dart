import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class SwitchAccountPage extends StatefulWidget {
  SwitchAccountPage({Key key}) : super(key: key);

  _SwitchAccountPageState createState() => _SwitchAccountPageState();
}

class _SwitchAccountPageState extends State<SwitchAccountPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Switch Account"),
        ),
        body: Text("Tap avatar to switch accounts"),
      ),
    );
  }
}