import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/config/global_config.dart';
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
            backgroundColor: GlobalConfig.themeColor,
            leading: new IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Icon(Icons.arrow_back, size: 25),
            ),
            title: Text(LanguageChange.of(context).text_size),
            centerTitle: true,
          ),
          body: new ListView(
            padding: EdgeInsets.only(top: 5),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checkLarge == true) {
                          GlobalConfig.textSizeChecka = true;
                          GlobalConfig.textSizeCheckb = false;
                          GlobalConfig.textSizeCheckc = false;
                          GlobalConfig.fontSize = 24.0;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            LanguageChange.of(context).large,
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
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checkMiddle == true) {
                          GlobalConfig.textSizeChecka = false;
                          GlobalConfig.textSizeCheckb = true;
                          GlobalConfig.textSizeCheckc = false;
                          GlobalConfig.fontSize = 20.0;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            LanguageChange.of(context).middle,
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
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checkSmall == true) {
                          GlobalConfig.textSizeChecka = false;
                          GlobalConfig.textSizeCheckb = false;
                          GlobalConfig.textSizeCheckc = true;
                          GlobalConfig.fontSize = 16.0;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            LanguageChange.of(context).small,
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
