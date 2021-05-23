import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:intl/intl.dart';
import 'package:garbage_classification/services/Storage.dart';

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
  void _changeLanguageen() async {
    var before = Intl.getCurrentLocale();
    print('修改前语言环境:${Intl.getCurrentLocale()}');
    await LanguageChange.load(Locale('en', 'US'));
    //setState刷新页面改变语言
    setState(() {
      if (before != Intl.getCurrentLocale()) {
        Storage.remove('data_res');
        Storage.remove('data_wet');
        Storage.remove('data_rec');
        Storage.remove('data_other');
      }
    });
    print('修改后语言环境:${Intl.getCurrentLocale()}');
  }

  void _changeLanguageCn() async {
    var before = Intl.getCurrentLocale();
    print('修改前语言环境:${Intl.getCurrentLocale()}');
    await LanguageChange.load(Locale('zh', 'CN'));
    //setState刷新页面改变语言
    setState(() {
      if (before != Intl.getCurrentLocale()) {
        Storage.remove('data_res');
        Storage.remove('data_wet');
        Storage.remove('data_rec');
        Storage.remove('data_other');
      }
    });
    print('修改后语言环境:${Intl.getCurrentLocale()}');
  }

  void _changeLanguageTw() async {
    var before = Intl.getCurrentLocale();
    print('修改前语言环境:${Intl.getCurrentLocale()}');
    await LanguageChange.load(Locale('zh', 'TW'));
    //setState刷新页面改变语言
    setState(() {
      if (before != Intl.getCurrentLocale()) {
        Storage.remove('data_res');
        Storage.remove('data_wet');
        Storage.remove('data_rec');
        Storage.remove('data_other');
      }
    });
    print('修改后语言环境:${Intl.getCurrentLocale()}');
  }

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
                Navigator.of(context).pop(true);
              },
              icon: Icon(Icons.arrow_back, size: 25),
            ),
            title: Text(LanguageChange.of(context).language),
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
                        _changeLanguageCn();
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
                            "简体中文",
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
                        _changeLanguageTw();
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
                            "繁體中文",
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
                          _changeLanguageen();
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
                            "English",
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
