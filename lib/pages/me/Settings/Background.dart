import 'package:flutter/material.dart';
import 'file:///D:/FlutterProject/garbage_classification/lib/config/global_config.dart';

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
          title: Text("Theme Colors"),
          centerTitle: true,
        ),
        body: new ListView(
          padding: EdgeInsets.only(top: 5),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("简洁白"),
                      ),
                      trailing: new Container(
                        child: new Icon(
                          Icons.check, color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("少女粉"),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("主题黑"),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("宝石蓝 (5硬币/月)"),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("高能红 (5硬币/月)"),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {

                  },
                  child: new Container(
                    child: new ListTile(
                      // leading: new Container(
                      //
                      // ),
                      title: new Container(
                        child: new Text("早苗绿 (5硬币/月)"),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ));
  }
}