import 'package:flutter/material.dart';
import '../../../../config/global_config.dart';

class HotQuestionsPage extends StatelessWidget {
  const HotQuestionsPage({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Hot Questions"),
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
                          child: new Text("怎么才能吃不胖？",
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
                          child: new Text("女朋友去哪里可以领？",
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
                          child: new Text("为什么我的头像不够帅？",
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