import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
          appBar: AppBar(title: Text("Category"), centerTitle: true),
          body: new ListView(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.accessibility_sharp),
                  title: new Text('Dry garbage')),
              new ListTile(
                  leading: new Icon(Icons.accessible_forward_sharp),
                  title: new Text('Wet garbage')),
              new ListTile(
                  leading: new Icon(Icons.accessible_sharp),
                  title: new Text('Kitchen garbage')),
              new ListTile(
                leading: new Icon(Icons.not_accessible_sharp),
                title: new Text('Hazardous garbage'),
              )
            ],
          )),
    );
  }
}
