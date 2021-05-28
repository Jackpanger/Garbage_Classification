import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/services/UserServices.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'Settings/Language.dart';
import 'Settings/Text Size.dart';
import 'Settings/Other Tools.dart';
import 'Settings/Help&Feedback.dart';
import 'Settings/About.dart';
import 'Settings/Services.dart';
import 'Settings/Switch Account.dart';
import 'package:intl/intl.dart';
import 'Settings/Theme Colors.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var _settings = 'Settings';
  var _language = 'Language';
  var _text_size = 'Text Size';
  var _theme_colors  = 'Theme Colors';
  var _other_tools='Other Tools';
  var _help='Help & Feedback';
  var _about='About';
  var _services='Services';
  var _switch_account='Switch Account';
  var _log_out='Log Out';

  _getDifLanguage() {
    setState(() {
      _settings  = LanguageChange.of(context).settings;
      _language=LanguageChange.of(context).language;
      _text_size = LanguageChange.of(context).text_size;
      _theme_colors = LanguageChange.of(context).theme_colors;
      _other_tools =  LanguageChange.of(context).other_tools;
      _help =  LanguageChange.of(context).help;
      _about =  LanguageChange.of(context).about;
      _services =  LanguageChange.of(context).services;
      _switch_account = LanguageChange.of(context).switch_account;
      _log_out =  LanguageChange.of(context).log_out;
    });


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
          appBar: AppBar(
            backgroundColor: GlobalConfig.themeColor,
            title: Text(_settings),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Tabs(
                          index: 2,
                        )));
              },
            ),
          ),
          body: new ListView(
            padding: EdgeInsets.only(top: 6),
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LanguagePage())).then((value) => value?_getDifLanguage():null);
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(_language,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TextSizePage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                                _text_size,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThemeColorsPage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                                _theme_colors,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OtherToolsPage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                                _other_tools,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HelpFeedbackPage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(_help,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(_about,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ServicesPage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text(_services,
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor,
                                    fontSize: GlobalConfig.fontSize)),
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SwitchAccountPage()));
                    },
                    child: new Container(
                      child: new Text(_switch_account,
                          style: new TextStyle(
                              color: GlobalConfig.fontColor,
                              fontSize: GlobalConfig.fontSize)),
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: TextButton(
                  onPressed: () {
                    UserServices.loginOut();
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    _log_out,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: GlobalConfig.fontSize,
                        color: GlobalConfig.fontColor),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
