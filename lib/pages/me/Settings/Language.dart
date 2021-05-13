import 'package:flutter/material.dart';
import '../../../config/global_config.dart';

class ButtonColors {
  static Color colorOrigin = Colors.white;
  static Color colorChedked = Colors.grey;
  static List colorList = [colorOrigin, colorChedked];
}

class LanguagePage extends StatefulWidget {
  LanguagePage({Key key}) : super(key: key);

  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  bool checka = true;
  bool checkb = true;
  bool checkc = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: GlobalConfig.themeColor,
              leading: new IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, size: 25),
              ),
              title: Text('Language'),
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
                        if (checka == true) {
                          GlobalConfig.Languagea = true;
                          GlobalConfig.Languageb = false;
                          GlobalConfig.Languagec = false;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "English",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.Languagea,
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
                        if (checkb == true) {
                          GlobalConfig.Languagea = false;
                          GlobalConfig.Languageb = true;
                          GlobalConfig.Languagec = false;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "简体中文",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                              //fontSize: FontSize.getFontSize(),
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.Languageb,
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
                        if (checkc == true) {
                          GlobalConfig.Languagea = false;
                          GlobalConfig.Languageb = false;
                          GlobalConfig.Languagec = true;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "繁體中文",
                            style: new TextStyle(
                              fontSize: GlobalConfig.fontSize,
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: GlobalConfig.Languagec,
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