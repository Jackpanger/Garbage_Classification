import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

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
          appBar: AppBar(title: Text("Settings"), centerTitle: true),
          body: new ListView(
            padding: EdgeInsets.only(top: 10),
            children: [
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Language",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Text Size",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Background",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Other Tools",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Help & Feedback",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                // margin: const EdgeInsets.only(bottom: 10.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "About",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Services",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                margin: const EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Switch Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 12.0, top: 12.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: Text(
                  "Log Out",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: GlobalConfig.fontColor),
                ),
              )
            ],
          )),
    );
  }
}
