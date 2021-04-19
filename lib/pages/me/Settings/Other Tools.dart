import 'package:flutter/material.dart';
import 'file:///D:/FlutterProject/garbage_classification/lib/config/global_config.dart';

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
          title: Text("Other Tools"),
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
                          child: new Text("Enabled",
                              style: new TextStyle(fontSize: 15.0)),
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
                          child: new Text("苏州话语言输入功能",
                              style: new TextStyle(fontSize: 15.0)),
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
                          child: new Text("粤语语言输入功能",
                              style: new TextStyle(fontSize: 15.0)),
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
                          child: new Text("Disabled",
                              style: new TextStyle(fontSize: 15.0)),
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
                          child: new Text("XXX News",
                              style: new TextStyle(fontSize: 15.0)),
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
                          child: new Text("XXX Mail",
                              style: new TextStyle(fontSize: 15.0)),
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