import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import '../../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings/About.dart';


class DevelopmentTeamPage extends StatelessWidget {
  const DevelopmentTeamPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text(LanguageChange.of(context).about),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).scrum_master, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).master, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).product_owner, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).po, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).development_members, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_one, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_two, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_three, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_four, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_five, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).dv_six, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
