import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class BackgroundPage extends StatefulWidget {
  BackgroundPage({Key key}) : super(key: key);

  _BackgroundPageState createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
            appBar: AppBar(
              title: Text("Background"),
            ),
            body: new Container(
              child: new Text("Background",
                  style: new TextStyle(
                      color: GlobalConfig.fontColor, fontSize: 22.0)
              ),
            )
        )
    );
  }
}
