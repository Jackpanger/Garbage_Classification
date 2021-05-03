import 'package:flutter/material.dart';
import 'package:garbage_classification/services/UserServices.dart';
import '../../config/global_config.dart';
import 'Settings/Language.dart';
import 'Settings/Text Size.dart';
import 'Settings/Other Tools.dart';
import 'Settings/Help&Feedback.dart';
import 'Settings/About.dart';
import 'Settings/Services.dart';
import 'Settings/Switch Account.dart';
import 'Settings/Theme Colors.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
          appBar: AppBar(
            title: Text("Settings"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Tabs(index: 2,)));
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
                          builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: new Text("Language",
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
                            child: new Text("Text Size",
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
                            child: new Text("Theme Colors",
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
                            child: new Text("Other Tools",
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
                            child: new Text("Help & Feedback",
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
                            child: new Text("About",
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
                            child: new Text("Services",
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
                      child: new Text("Switch Account",
                          style: new TextStyle(
                              color: GlobalConfig.fontColor, fontSize: GlobalConfig.fontSize)),
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
                    "Log Out",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: GlobalConfig.fontSize, color: GlobalConfig.fontColor),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
