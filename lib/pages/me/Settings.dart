import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';
import 'Settings/Language.dart';
import 'Settings/Text Size.dart';
import 'Settings/Background.dart';
import 'Settings/Other Tools.dart';
import 'Settings/Help&Feedback.dart';
import 'Settings/About.dart';
import 'Settings/Services.dart';
import 'Settings/Switch Account.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: GlobalConfig.barColor,
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: GlobalConfig.barColor,
      ),
      body: new ListView(
        padding: EdgeInsets.only(top: 6),
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
            margin: const EdgeInsets.only(bottom: 6.0),
            width: MediaQuery.of(context).size.width,
            color: GlobalConfig.rowColor,
            child: new TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LanguagePage()));
                },
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Text("Language",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
            // margin: const EdgeInsets.only(bottom: 10.0),
            width: MediaQuery.of(context).size.width,
            color: GlobalConfig.rowColor,
            child: new TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TextSizePage()));
                },
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Text("Text Size",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
            // margin: const EdgeInsets.only(bottom: 10.0),
            width: MediaQuery.of(context).size.width,
            color: GlobalConfig.rowColor,
            child: new TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BackgroundPage()));
                },
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Text("Background",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
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
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
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
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
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
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
            margin: const EdgeInsets.only(bottom: 6.0),
            width: MediaQuery.of(context).size.width,
            color: GlobalConfig.rowColor,
            child: new TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ServicesPage()));
                },
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Text("Services",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 22.0)),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, bottom: 0.0, top: 0.0),
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
                          color: GlobalConfig.fontColor, fontSize: 22.0)),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
            width: MediaQuery.of(context).size.width,
            color: GlobalConfig.rowColor,
            child: Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
            ),
          )
        ],
      ),
    );
  }
}
