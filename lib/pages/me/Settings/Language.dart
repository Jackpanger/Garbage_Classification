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

  int currentindexa = 0;
  int currentindexb = 0;
  int currentindexc = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
            appBar: AppBar(
              leading: new IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, size: 25),
              ),
              title: Text('Language'),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 100,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      color: Colors.white,
                      child: RaisedButton(
                        color: ButtonColors.colorList[currentindexa],
                        child: Text(
                          '繁體中文',
                          style: TextStyle(fontSize: GlobalConfig.fontSize),
                        ),
                        textColor: Colors.black,
                        onPressed: () {
                          setState(() {
                            if (checka) {
                              currentindexa = 1;
                              currentindexb = 0;
                              currentindexc = 0;
                            }
                          });
                        },
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 100,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      color: Colors.white,
                      child: RaisedButton(
                        color: ButtonColors.colorList[currentindexb],
                        child: Text(
                          '简体中文',
                          style: TextStyle(fontSize: GlobalConfig.fontSize),
                        ),
                        textColor: Colors.black,
                        onPressed: () {
                          setState(() {
                            if (checkb) {
                              currentindexa = 0;
                              currentindexb = 1;
                              currentindexc = 0;
                            }
                          });
                        },
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 100,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      color: Colors.white,
                      child: RaisedButton(
                        color: ButtonColors.colorList[currentindexc],
                        child: Text(
                          'English',
                          style: TextStyle(fontSize: GlobalConfig.fontSize),
                        ),
                        textColor: Colors.black,
                        onPressed: () {
                          setState(() {
                            if (checkc) {
                              currentindexa = 0;
                              currentindexb = 0;
                              currentindexc = 1;
                            }
                          });
                        },
                      ),
                    ))
                  ],
                ),
              ],
            )));
  }
}
