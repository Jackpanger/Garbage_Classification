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
          title: Text("XXX Services"),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            padding: EdgeInsets.only(top: 30),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 50.0),
                child: new TextButton(
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.fromLTRB(128, 0, 0, 0),
                                child: new Icon(Icons.lightbulb_outline,
                                    color: GlobalConfig.arrowColor),
                              ),
                              new Container(
                                child: new Text(" XXX Services",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(fontSize: 23.0)),
                              ),
                            ],
                          ),
                        ),
                        subtitle: new Container(
                          child: new Text("Explore recently released XXX services",
                              textAlign: TextAlign.center,
                              style: new TextStyle(fontSize: 15.0)),
                        ),
                      ),
                    )),
              ),
              Container(
                child: new ListTile(
                  title: new Container(
                    child: new Text("————  No services available  ————",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 13.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}