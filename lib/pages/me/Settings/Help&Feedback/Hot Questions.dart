import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings.dart';

class HotQuestionsPage extends StatefulWidget {
  const HotQuestionsPage({Key key}) : super (key: key);
  _HotQuestionsPageState createState() => _HotQuestionsPageState();
}

class _HotQuestionsPageState extends State<HotQuestionsPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings()));
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text(LanguageChange.of(context).hot_questions),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            padding: EdgeInsets.only(top: 10),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).question_one,
                              style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child:
                          new Icon(
                              Icons.arrow_forward, color: GlobalConfig
                              .arrowColor),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).question_two,
                              style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child:
                          new Icon(
                              Icons.arrow_forward, color: GlobalConfig
                              .arrowColor),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).question_three,
                              style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child:
                          new Icon(
                              Icons.arrow_forward, color: GlobalConfig
                              .arrowColor),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

}