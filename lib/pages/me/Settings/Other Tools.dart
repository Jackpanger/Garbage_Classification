import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/config/global_config.dart';

class OtherToolsPage extends StatefulWidget {
  OtherToolsPage({Key key}) : super(key: key);

  _OtherToolsPageState createState() => _OtherToolsPageState();
}

class _OtherToolsPageState extends State<OtherToolsPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text(LanguageChange.of(context).other_tools),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                child: new TextButton(
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new Icon(Icons.pan_tool_rounded,color: Colors.green),
                        ),
                        title: new Container(
                          child: new Text(LanguageChange.of(context).enabled,
                              style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).suzhou,
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
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).yue,
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
                margin: const EdgeInsets.only(bottom: 1.0),
                child: new TextButton(
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new Icon(Icons.pan_tool_rounded,color: Colors.grey),
                        ),
                        title: new Container(
                          child: new Text(LanguageChange.of(context).disabled,
                              style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).xxx_news,
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
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(LanguageChange.of(context).xxx_mail,
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