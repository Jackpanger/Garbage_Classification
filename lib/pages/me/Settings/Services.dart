import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class ServicesPage extends StatefulWidget {
  ServicesPage({Key key}) : super(key: key);
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Services"),
        ),
        body: Text("Services"),
      ),
    );
  }
}