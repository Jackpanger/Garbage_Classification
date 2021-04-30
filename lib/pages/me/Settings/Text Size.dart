import 'package:flutter/material.dart';
import '../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings.dart';

class TextSizePage extends StatefulWidget {
  TextSizePage({Key key}) : super(key: key);

  _TextSizePageState createState() => _TextSizePageState();
}

class _TextSizePageState extends State<TextSizePage> {
  bool checkLarge = true;
  bool checkMiddle = true;
  bool checkSmall = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Icon(Icons.arrow_back, size: 25),
            ),
            title: Text("Text Size"),
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
                      setState(() {
                        if (checkLarge == true) {
                          GlobalConfig.textSizeChecka = true;
                          GlobalConfig.textSizeCheckb = false;
                          GlobalConfig.textSizeCheckc = false;
                          GlobalConfig.fontSize = 24.0;
                          //Storage.setString('fontSize', 24.0);
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "Large",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.textSizeChecka,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
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
                      setState(() {
                        if (checkMiddle == true) {
                          GlobalConfig.textSizeChecka = false;
                          GlobalConfig.textSizeCheckb = true;
                          GlobalConfig.textSizeCheckc = false;
                          GlobalConfig.fontSize = 20.0;
                          //Storage.setString('fontSize', 22.0);
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "Middle",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                              //fontSize: FontSize.getFontSize(),
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.textSizeCheckb,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
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
                      setState(() {
                        if (checkSmall == true) {
                          GlobalConfig.textSizeChecka = false;
                          GlobalConfig.textSizeCheckb = false;
                          GlobalConfig.textSizeCheckc = true;
                          GlobalConfig.fontSize = 16.0;
                          //Storage.setString('fontSize', 20.0);
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "Small",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                              //fontSize: FontSize.getFontSize(),
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.textSizeCheckc,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
